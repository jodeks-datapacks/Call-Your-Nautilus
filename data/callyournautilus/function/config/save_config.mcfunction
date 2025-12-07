$data modify storage callyournautilus:root no_player_on_nautilus set value $(dialog_no_player_on_nautilus)

$scoreboard players set &no_player_on_nautilus callyournautilus.config $(dialog_no_player_on_nautilus)

data modify storage callyournautilus:root dialog_no_player_on_nautilus set value "$(dialog_no_player_on_nautilus)"


$data modify storage callyournautilus:root mount_automatically set value $(dialog_mount_automatically)

$scoreboard players set &mount_automatically callyournautilus.config $(dialog_mount_automatically)

data modify storage callyournautilus:root dialog_mount_automatically set value "$(dialog_mount_automatically)"


$data modify storage callyournautilus:root nautilus_owner set value $(dialog_nautilus_owner)

$scoreboard players set &nautilus_owner callyournautilus.config $(dialog_nautilus_owner)

data modify storage callyournautilus:root dialog_nautilus_owner set value "$(dialog_nautilus_owner)"


$data modify storage callyournautilus:root player_in_water_check set value $(dialog_player_in_water)

$scoreboard players set &player_in_water_check callyournautilus.config $(dialog_player_in_water)

data modify storage callyournautilus:root dialog_player_in_water set value "$(dialog_player_in_water)"