function call_your_nautilus:get_data/goat_horn_instrument
function call_your_nautilus:get_data/goat_horn_slot

data modify storage call_your_nautilus:root data.nautilus_UUID_from_horn set from entity @s SelectedItem.components."minecraft:custom_data".nautilus_call.UUID

data modify storage call_your_nautilus:root data.nautilus_UUID_from_horn_0 set from entity @s SelectedItem.components."minecraft:custom_data".nautilus_call.UUID_0

function call_your_nautilus:reset_goat_horn/reset with storage call_your_nautilus:root data