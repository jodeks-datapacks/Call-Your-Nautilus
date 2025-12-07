schedule function callyournautilus:schedule_save_uuid 1s

# save nautilus position
execute as @e[type=nautilus,tag=nautilus_can_called] run function callyournautilus:teleport/save_uuid with storage callyournautilus:root