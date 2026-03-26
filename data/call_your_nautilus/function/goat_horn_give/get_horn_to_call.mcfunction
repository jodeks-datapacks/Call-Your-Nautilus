scoreboard players set #max raycast_steps.call_your_nautilus 320
scoreboard players reset #steps raycast_steps.call_your_nautilus

# Tag nautilus the player is looking at
execute as @a[predicate=call_your_nautilus:looking_at] at @s anchored eyes positioned ^ ^ ^0.2 run function call_your_nautilus:goat_horn_give/raycast

# UUID check
execute if score &nautilus_owner call_your_nautilus.config matches 1 run data modify storage call_your_nautilus:root data.UUID set from entity @e[limit=1,tag=nautilus_to_call] data.Owner
execute if score &nautilus_owner call_your_nautilus.config matches 1 store success score &UUID_check check.call_your_nautilus run data modify storage call_your_nautilus:root data.UUID set from entity @s UUID

execute if score &nautilus_owner call_your_nautilus.config matches 1 if data entity @e[limit=1,tag=nautilus_to_call] data.Owner if score &UUID_check check.call_your_nautilus matches 1 run title @s actionbar {"text":"Nautilus already has a horn bound to it by another user","color":"red"}
execute if score &nautilus_owner call_your_nautilus.config matches 1 if data entity @e[limit=1,tag=nautilus_to_call] data.Owner if score &UUID_check check.call_your_nautilus matches 1 run return fail

# Get data to store in goat horn
function call_your_nautilus:get_data/goat_horn_slot

function call_your_nautilus:get_data/goat_horn_instrument

function call_your_nautilus:get_data/player_name

# If nautilus_owner setting is enabled
execute if score &nautilus_owner call_your_nautilus.config matches 1 run data modify storage call_your_nautilus:root data.Owner set from entity @s UUID
execute if score &nautilus_owner call_your_nautilus.config matches 1 run function call_your_nautilus:goat_horn_give/set_owner with storage call_your_nautilus:root data

# get nautilus UUID to store in goat horn
data modify storage call_your_nautilus:root data.nautilus_UUID_to_call set from entity @e[limit=1,tag=nautilus_to_call] UUID

data modify storage call_your_nautilus:root data.nautilus_UUID_to_call_0 set from entity @e[limit=1,tag=nautilus_to_call] UUID[0]

# get nautilus name
data modify storage call_your_nautilus:root data.nautilus_name set from entity @e[limit=1,tag=nautilus_to_call] CustomName

# execute give goat horn
execute as @s at @s if entity @e[limit=1,tag=nautilus_to_call] run function call_your_nautilus:goat_horn_give/goat_horn_give_macro with storage call_your_nautilus:root data

tag @e[tag=nautilus_to_call] remove nautilus_to_call

data remove storage call_your_nautilus:root data.UUID
data remove storage call_your_nautilus:root data.goat_horn_slot
data remove storage call_your_nautilus:root data.goat_horn_instrument
data remove storage call_your_nautilus:root data.nautilus_UUID_to_call
data remove storage call_your_nautilus:root data.nautilus_UUID_to_call_0
data remove storage call_your_nautilus:root data.nautilus_name
data remove storage call_your_nautilus:root data.player_name