$execute as @e[type=nautilus,nbt={UUID:$(nautilus_UUID_from_horn)}] unless entity @s[predicate=call_your_nautilus:no_player_on_nautilus] \
 unless data entity @s leash run function call_your_nautilus:teleport/teleport/teleport_unleashed with storage call_your_nautilus:root data

$execute as @e[type=nautilus,nbt={UUID:$(nautilus_UUID_from_horn)}] unless entity @s[predicate=call_your_nautilus:no_player_on_nautilus] \
 if data entity @s leash run function call_your_nautilus:teleport/teleport/teleport_leashed with storage call_your_nautilus:root data

scoreboard players set &teleported check.call_your_nautilus 1