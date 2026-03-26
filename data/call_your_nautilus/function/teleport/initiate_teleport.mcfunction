
scoreboard players add &time_since_goat_horn_use check.call_your_nautilus 1

execute if score &time_since_goat_horn_use check.call_your_nautilus matches 1 run function call_your_nautilus:teleport/teleport/forceload_add with storage call_your_nautilus:root data

$execute if score &teleported check.call_your_nautilus matches 0 if entity @e[nbt={UUID:$(nautilus_UUID_from_horn)}] run function call_your_nautilus:teleport/teleport/teleport with storage call_your_nautilus:root data

execute if score &mount_automatically call_your_nautilus.config matches 1 if score &mounted check.call_your_nautilus matches 0 if score &teleported check.call_your_nautilus matches 1 if score &time_since_goat_horn_use check.call_your_nautilus matches 5.. run function call_your_nautilus:teleport/teleport/mount with storage call_your_nautilus:root data

execute if score &time_since_goat_horn_use check.call_your_nautilus matches 25 run function call_your_nautilus:teleport/teleport/forceload_remove with storage call_your_nautilus:root data



execute if score &time_since_goat_horn_use check.call_your_nautilus matches 26.. run scoreboard players set &teleported check.call_your_nautilus 0

execute if score &time_since_goat_horn_use check.call_your_nautilus matches 26.. run scoreboard players set &mounted check.call_your_nautilus 0

execute if score &time_since_goat_horn_use check.call_your_nautilus matches 26.. run scoreboard players set &time_since_goat_horn_use check.call_your_nautilus 0

execute if score &time_since_goat_horn_use check.call_your_nautilus matches 1.. run schedule function call_your_nautilus:teleport/call_initiate 1t