schedule function call_your_nautilus:schedule_save_uuid 1s

# save nautilus position
execute as @e[type=nautilus,tag=nautilus_can_called] run function call_your_nautilus:teleport/save_uuid with storage call_your_nautilus:root data