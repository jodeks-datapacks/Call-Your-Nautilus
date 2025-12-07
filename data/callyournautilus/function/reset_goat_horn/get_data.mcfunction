function callyournautilus:get_data/goat_horn_instrument
function callyournautilus:get_data/goat_horn_slot

data modify storage callyournautilus:root nautilus_UUID_from_horn set from entity @s SelectedItem.components."minecraft:custom_data".nautilus_call.UUID

data modify storage callyournautilus:root nautilus_UUID_from_horn_0 set from entity @s SelectedItem.components."minecraft:custom_data".nautilus_call.UUID_0

function callyournautilus:reset_goat_horn/reset with storage callyournautilus:root