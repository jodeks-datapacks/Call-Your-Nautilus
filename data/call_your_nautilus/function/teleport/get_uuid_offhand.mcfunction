data modify storage call_your_nautilus:root data.nautilus_UUID_from_horn set from entity @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{tag:{goat_horn_to_call_nautilus:1b}}}}}}] equipment.offhand.components."minecraft:custom_data".nautilus_call.UUID

function call_your_nautilus:teleport/check_for_teleport with storage call_your_nautilus:root data