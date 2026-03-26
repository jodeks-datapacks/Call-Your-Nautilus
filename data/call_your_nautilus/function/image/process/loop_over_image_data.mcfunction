# Copy current pixel
data modify storage call_your_nautilus:image data.current.pixel_color set \
  from storage call_your_nautilus:image data.current.image_data[0]
data modify storage call_your_nautilus:image data.current.description_text set \
  from storage call_your_nautilus:image data.current.description[0]

scoreboard players add $index.image_data call_your_nautilus.image 1

# Calculate column
scoreboard players operation $index.column call_your_nautilus.image = $index.image_data call_your_nautilus.image
scoreboard players operation $index.column call_your_nautilus.image %= $width call_your_nautilus.image

# Calculate row
scoreboard players operation $index.row call_your_nautilus.image = $index.image_data call_your_nautilus.image
scoreboard players operation $index.row call_your_nautilus.image /= $width call_your_nautilus.image

# Append start spacing
execute if score $index.column call_your_nautilus.image matches 1 run \
  function call_your_nautilus:image/process/append/blank

# Append colored pixel
execute unless data storage call_your_nautilus:image data.current{pixel_color: ''} run \
  function call_your_nautilus:image/process/append/pixel
# Append background pixel
execute if data storage call_your_nautilus:image data.current{pixel_color: ''} run \
  function call_your_nautilus:image/process/append/background

# Append description
execute if score $index.column call_your_nautilus.image matches 0 run \
    function call_your_nautilus:image/process/image_end/description

# Remove first element from the image_data array
data remove storage call_your_nautilus:image data.current.image_data[0]
# Loop over rows
execute if score $index.row call_your_nautilus.image < $height call_your_nautilus.image run \
  function call_your_nautilus:image/process/loop_over_image_data
 