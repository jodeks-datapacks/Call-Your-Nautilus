# Copy current pixel
data modify storage callyournautilus:image current.pixel_color set \
  from storage callyournautilus:image current.image_data[0]
data modify storage callyournautilus:image current.description_text set \
  from storage callyournautilus:image current.description[0]

scoreboard players add $index.image_data callyournautilus.image 1

# Calculate column
scoreboard players operation $index.column callyournautilus.image = $index.image_data callyournautilus.image
scoreboard players operation $index.column callyournautilus.image %= $width callyournautilus.image

# Calculate row
scoreboard players operation $index.row callyournautilus.image = $index.image_data callyournautilus.image
scoreboard players operation $index.row callyournautilus.image /= $width callyournautilus.image

# Append start spacing
execute if score $index.column callyournautilus.image matches 1 run \
  function callyournautilus:image/process/append/blank

# Append colored pixel
execute unless data storage callyournautilus:image current{pixel_color: ''} run \
  function callyournautilus:image/process/append/pixel
# Append background pixel
execute if data storage callyournautilus:image current{pixel_color: ''} run \
  function callyournautilus:image/process/append/background

# Append description
execute if score $index.column callyournautilus.image matches 0 run \
    function callyournautilus:image/process/image_end/description

# Remove first element from the image_data array
data remove storage callyournautilus:image current.image_data[0]
# Loop over rows
execute if score $index.row callyournautilus.image < $height callyournautilus.image run \
  function callyournautilus:image/process/loop_over_image_data
 