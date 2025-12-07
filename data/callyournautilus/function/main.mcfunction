
execute if score &player_in_water_check callyournautilus.config matches 0 as @a[scores={use_goat_horn_nautilus=1..},nbt={SelectedItem:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_nautilus:1b}}}}}] run function callyournautilus:teleport/get_uuid_selected_item
execute if score &player_in_water_check callyournautilus.config matches 0 as @a[scores={use_goat_horn_nautilus=1..},nbt={equipment:{offhand:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_nautilus:1b}}}}}}] run function callyournautilus:teleport/get_uuid_offhand

execute if score &player_in_water_check callyournautilus.config matches 1 as @a[scores={use_goat_horn_nautilus=1..},nbt={SelectedItem:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_nautilus:1b}}}}}] if predicate callyournautilus:in_water run function callyournautilus:teleport/get_uuid_selected_item
execute if score &player_in_water_check callyournautilus.config matches 1 as @a[scores={use_goat_horn_nautilus=1..},nbt={equipment:{offhand:{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{tag:{goat_horn_to_call_nautilus:1b}}}}}}] if predicate callyournautilus:in_water run function callyournautilus:teleport/get_uuid_offhand

scoreboard players set @a use_goat_horn_nautilus 0

# sneak time counter
execute as @a[scores={sneak_time.callyournautilus=40..},predicate=callyournautilus:looking_at] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] unless data entity @s SelectedItem.components."minecraft:custom_data".nautilus_call.UUID run function callyournautilus:goat_horn_give/get_horn_to_call

execute as @a[x_rotation=-90,scores={sneak_time.callyournautilus=40..}] if entity @s[nbt={SelectedItem:{id:"minecraft:goat_horn"}}] if data entity @s SelectedItem.components."minecraft:custom_data".nautilus_call.UUID run function callyournautilus:reset_goat_horn/get_data

execute as @a[scores={sneak_time.callyournautilus=40..}] run scoreboard players set @a sneak_time.callyournautilus 0

scoreboard players enable @a callyournautilus.config
execute as @a if score @s callyournautilus.config matches 1 run \
 function callyournautilus:config/dialog_config with storage callyournautilus:root