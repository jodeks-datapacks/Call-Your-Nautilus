$execute as @e[type=nautilus,nbt={UUID:$(nautilus_UUID_from_horn)}] unless entity @s[predicate=callyournautilus:no_player_on_nautilus] \
 unless data entity @s leash run function callyournautilus:teleport/teleport/teleport_unleashed with storage callyournautilus:root

$execute as @e[type=nautilus,nbt={UUID:$(nautilus_UUID_from_horn)}] unless entity @s[predicate=callyournautilus:no_player_on_nautilus] \
 if data entity @s leash run function callyournautilus:teleport/teleport/teleport_leashed with storage callyournautilus:root


# $say teleport $(nautilus_UUID_from_horn) $(player_UUID) 

scoreboard players set &teleported check.callyournautilus 1