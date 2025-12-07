#> callyournautilus:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage callyournautilus:image image_data  
# @writes storage callyournautilus:image width  
# @writes storage callyournautilus:image height  
# @writes storage callyournautilus:image background_color  
# @writes storage callyournautilus:image description  
# @writes storage callyournautilus:image pixel_character.blank  
# @writes storage callyournautilus:image pixel_character.chat  
# @writes storage callyournautilus:image pixel_character.lore

data remove storage callyournautilus:image image_data
data remove storage callyournautilus:image width
data remove storage callyournautilus:image height
data remove storage callyournautilus:image background_color
data remove storage callyournautilus:image description

$data modify storage callyournautilus:image image_data set value $(image_data)
$data modify storage callyournautilus:image width set value $(width)
$data modify storage callyournautilus:image height set value $(height)
$data modify storage callyournautilus:image background_color set value "$(background_color)"
$data modify storage callyournautilus:image description set value $(description)

data modify storage callyournautilus:image pixel_character.blank set value "　"
data modify storage callyournautilus:image pixel_character.pixel set value "▌▌"
data modify storage callyournautilus:image pixel_character.line_break set value '\n'

function callyournautilus:image/process/generate
