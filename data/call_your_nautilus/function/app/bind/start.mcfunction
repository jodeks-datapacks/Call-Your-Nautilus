scoreboard players set &UUID_check call_your_nautilus.check 1

execute as @a[predicate=call_your_nautilus:looking_at_callable] as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function jodek:api/call_your/raycast/start_ray

execute as @s at @s if entity @e[tag=jodek.bind_target,distance=..10] run function call_your_nautilus:app/bind/validate

tag @e[tag=jodek.bind_target] remove jodek.bind_target

data remove storage call_your_nautilus:root data.selected_item_slot
data remove storage call_your_nautilus:root data.custom_name
data remove storage call_your_nautilus:root data.player_name
data remove storage call_your_nautilus:root data.UUID
data remove storage call_your_nautilus:root data.instrument
data remove storage call_your_nautilus:root data.audioplayer
data remove storage call_your_nautilus:root data.Owner