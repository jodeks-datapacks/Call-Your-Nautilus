data modify storage call_your_nautilus:root data.player_UUID set from entity @s UUID

function call_your_nautilus:teleport/get_latest_position with storage call_your_nautilus:root data

function call_your_nautilus:get_data/leashed_uuid with storage call_your_nautilus:root data


execute store result score nautilus_UUID_lates_position_x store_position.call_your_nautilus run data get storage call_your_nautilus:root data.nautilus_UUID_latest_position_x

execute store result score nautilus_UUID_lates_position_z store_position.call_your_nautilus run data get storage call_your_nautilus:root data.nautilus_UUID_latest_position_z

execute store result storage call_your_nautilus:root data.nautilus_UUID_latest_position_x int 1 run scoreboard players get nautilus_UUID_lates_position_x store_position.call_your_nautilus

execute store result storage call_your_nautilus:root data.nautilus_UUID_latest_position_z int 1 run scoreboard players get nautilus_UUID_lates_position_z store_position.call_your_nautilus


schedule function call_your_nautilus:teleport/call_initiate 1t