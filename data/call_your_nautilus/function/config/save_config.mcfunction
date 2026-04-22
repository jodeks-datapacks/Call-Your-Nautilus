$data modify storage call_your_nautilus:root data.no_player_on_nautilus set value $(dialog_no_player_on_nautilus)
$scoreboard players set &no_player_on_nautilus call_your_nautilus.config $(dialog_no_player_on_nautilus)
data modify storage call_your_nautilus:root data.dialog_no_player_on_nautilus set value "$(dialog_no_player_on_nautilus)"

$data modify storage call_your_nautilus:root data.mount_automatically set value $(dialog_mount_automatically)
$scoreboard players set &mount_automatically call_your_nautilus.config $(dialog_mount_automatically)
data modify storage call_your_nautilus:root data.dialog_mount_automatically set value "$(dialog_mount_automatically)"

$data modify storage call_your_nautilus:root data.player_in_water_check set value $(dialog_player_in_water)
$scoreboard players set &player_in_water_check call_your_nautilus.config $(dialog_player_in_water)
data modify storage call_your_nautilus:root data.dialog_player_in_water set value "$(dialog_player_in_water)"