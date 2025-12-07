
scoreboard players add &time_since_goat_horn_use check.callyournautilus 1

execute if score &time_since_goat_horn_use check.callyournautilus matches 1 run function callyournautilus:teleport/teleport/forceload_add with storage callyournautilus:root

$execute if score &teleported check.callyournautilus matches 0 if entity @e[nbt={UUID:$(nautilus_UUID_from_horn)}] run function callyournautilus:teleport/teleport/teleport with storage callyournautilus:root

execute if score &mount_automatically callyournautilus.config matches 1 if score &mounted check.callyournautilus matches 0 if score &teleported check.callyournautilus matches 1 if score &time_since_goat_horn_use check.callyournautilus matches 5.. run function callyournautilus:teleport/teleport/mount with storage callyournautilus:root

execute if score &time_since_goat_horn_use check.callyournautilus matches 25 run function callyournautilus:teleport/teleport/forceload_remove with storage callyournautilus:root



execute if score &time_since_goat_horn_use check.callyournautilus matches 26.. run scoreboard players set &teleported check.callyournautilus 0

execute if score &time_since_goat_horn_use check.callyournautilus matches 26.. run scoreboard players set &mounted check.callyournautilus 0

execute if score &time_since_goat_horn_use check.callyournautilus matches 26.. run scoreboard players set &time_since_goat_horn_use check.callyournautilus 0

execute if score &time_since_goat_horn_use check.callyournautilus matches 1.. run schedule function callyournautilus:teleport/call_initiate 1t