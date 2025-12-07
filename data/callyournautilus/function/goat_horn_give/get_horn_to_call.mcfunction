scoreboard players set #max raycast_steps.callyournautilus 320
scoreboard players reset #steps raycast_steps.callyournautilus

# Tag nautilus the player is looking at
execute as @a[predicate=callyournautilus:looking_at] at @s anchored eyes positioned ^ ^ ^0.2 run function callyournautilus:goat_horn_give/raycast

# UUID check
execute if score &nautilus_owner callyournautilus.config matches 1 run data modify storage callyournautilus:root UUID set from entity @e[limit=1,tag=nautilus_to_call] data.Owner
execute if score &nautilus_owner callyournautilus.config matches 1 store success score &UUID_check check.callyournautilus run data modify storage callyournautilus:root UUID set from entity @s UUID

execute if score &nautilus_owner callyournautilus.config matches 1 if data entity @e[limit=1,tag=nautilus_to_call] data.Owner if score &UUID_check check.callyournautilus matches 1 run title @s actionbar {"text":"Nautilus already has a horn bound to it by another user","color":"red"}
execute if score &nautilus_owner callyournautilus.config matches 1 if data entity @e[limit=1,tag=nautilus_to_call] data.Owner if score &UUID_check check.callyournautilus matches 1 run return fail

# Get data to store in goat horn
function callyournautilus:get_data/goat_horn_slot

function callyournautilus:get_data/goat_horn_instrument

function callyournautilus:get_data/player_name

# If nautilus_owner setting is enabled
execute if score &nautilus_owner callyournautilus.config matches 1 run data modify storage callyournautilus:root Owner set from entity @s UUID
execute if score &nautilus_owner callyournautilus.config matches 1 run function callyournautilus:goat_horn_give/set_owner with storage callyournautilus:root

# get nautilus UUID to store in goat horn
data modify storage callyournautilus:root nautilus_UUID_to_call set from entity @e[limit=1,tag=nautilus_to_call] UUID

data modify storage callyournautilus:root nautilus_UUID_to_call_0 set from entity @e[limit=1,tag=nautilus_to_call] UUID[0]

# get nautilus name
data modify storage callyournautilus:root nautilus_name set from entity @e[limit=1,tag=nautilus_to_call] CustomName

# execute give goat horn
execute as @s at @s if entity @e[limit=1,tag=nautilus_to_call] run function callyournautilus:goat_horn_give/goat_horn_give_macro with storage callyournautilus:root

tag @e[tag=nautilus_to_call] remove nautilus_to_call

data remove storage callyournautilus:root UUID
data remove storage callyournautilus:root goat_horn_slot
data remove storage callyournautilus:root goat_horn_instrument
data remove storage callyournautilus:root nautilus_UUID_to_call
data remove storage callyournautilus:root nautilus_UUID_to_call_0
data remove storage callyournautilus:root nautilus_name
data remove storage callyournautilus:root player_name