data modify storage callyournautilus:root player_UUID set from entity @s UUID

function callyournautilus:teleport/get_latest_position with storage callyournautilus:root

function callyournautilus:get_data/leashed_uuid with storage callyournautilus:root


execute store result score nautilus_UUID_lates_position_x store_position.callyournautilus run data get storage callyournautilus:root nautilus_UUID_latest_position_x

execute store result score nautilus_UUID_lates_position_z store_position.callyournautilus run data get storage callyournautilus:root nautilus_UUID_latest_position_z

execute store result storage callyournautilus:root nautilus_UUID_latest_position_x int 1 run scoreboard players get nautilus_UUID_lates_position_x store_position.callyournautilus

execute store result storage callyournautilus:root nautilus_UUID_latest_position_z int 1 run scoreboard players get nautilus_UUID_lates_position_z store_position.callyournautilus


schedule function callyournautilus:teleport/call_initiate 1t