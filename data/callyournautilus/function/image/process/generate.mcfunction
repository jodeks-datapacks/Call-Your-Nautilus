#> callyournautilus:image/process/generate
#
# This function generates the image data.

data modify storage callyournautilus:image current.image_data set from storage callyournautilus:image image_data
data modify storage callyournautilus:image current.description set from storage callyournautilus:image description
data modify storage callyournautilus:image current.pixel_character set from storage callyournautilus:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data callyournautilus.image 0
# Set width
execute store result score $width callyournautilus.image run data get storage callyournautilus:image width
# Set height
execute store result score $height callyournautilus.image run data get storage callyournautilus:image height
# Set length
scoreboard players operation $length callyournautilus.image = $width callyournautilus.image
scoreboard players operation $length callyournautilus.image *= $height callyournautilus.image
# Clear remaining entries in tellraw
data remove storage callyournautilus:image tellraw

# Add spacing on top
function callyournautilus:image/process/append/line_break
# Loop over image data
function callyournautilus:image/process/loop_over_image_data
# Add spacing on bottom
function callyournautilus:image/process/append/line_break