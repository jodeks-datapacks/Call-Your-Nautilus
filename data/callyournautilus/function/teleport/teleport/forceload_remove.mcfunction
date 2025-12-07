# $say remove $(nautilus_UUID_latest_position_x_forceload) $(nautilus_UUID_latest_position_z_forceload)

$execute in minecraft:overworld run forceload remove $(nautilus_UUID_latest_position_x_forceload) $(nautilus_UUID_latest_position_z_forceload)
$execute in minecraft:the_nether run forceload remove $(nautilus_UUID_latest_position_x_forceload) $(nautilus_UUID_latest_position_z_forceload)
$execute in minecraft:the_end run forceload remove $(nautilus_UUID_latest_position_x_forceload) $(nautilus_UUID_latest_position_z_forceload)

# data remove storage callyournautilus:root nautilus_UUID_latest_position_x 
# data remove storage callyournautilus:root nautilus_UUID_latest_position_z 
# data remove storage callyournautilus:root nautilus_UUID_latest_position_x_forceload
# data remove storage callyournautilus:root nautilus_UUID_latest_position_z_forceload
# data remove storage callyournautilus:root nautilus_UUID_from_horn
# data remove storage callyournautilus:root UUID
# data remove storage callyournautilus:root player_UUID
# data remove storage callyournautilus:root nautilus_name_from_nautilus