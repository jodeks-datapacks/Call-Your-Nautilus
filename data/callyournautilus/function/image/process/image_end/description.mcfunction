# Append blank
function callyournautilus:image/process/append/blank

data modify storage callyournautilus:image tellraw append \
  from storage callyournautilus:image current.description_text

# Append blank
function callyournautilus:image/process/append/blank

# Append line_break
execute unless score $index.image_data callyournautilus.image = $length callyournautilus.image \
  run function callyournautilus:image/process/append/line_break

# Remove first element from the description
data remove storage callyournautilus:image current.description[0]
 