execute unless data storage call_your_nautilus:root data.no_player_on_nautilus run data modify storage call_your_nautilus:root data.no_player_on_nautilus set value 0
execute unless score &no_player_on_nautilus call_your_nautilus.config = &no_player_on_nautilus call_your_nautilus.config run scoreboard players set &no_player_on_nautilus call_your_nautilus.config 0
data modify storage call_your_nautilus:root data.dialog_no_player_on_nautilus set value "$(dialog_no_player_on_nautilus)"

execute unless data storage call_your_nautilus:root data.mount_automatically run data modify storage call_your_nautilus:root data.mount_automatically set value 0
execute unless score &mount_automatically call_your_nautilus.config = &mount_automatically call_your_nautilus.config run scoreboard players set &mount_automatically call_your_nautilus.config 0
data modify storage call_your_nautilus:root data.dialog_mount_automatically set value "$(dialog_mount_automatically)"

execute unless data storage call_your_nautilus:root data.player_in_water_check run data modify storage call_your_nautilus:root data.player_in_water_check set value 0
execute unless score &player_in_water_check call_your_nautilus.config = &player_in_water_check call_your_nautilus.config run scoreboard players set &player_in_water_check call_your_nautilus.config 0
data modify storage call_your_nautilus:root data.dialog_player_in_water set value "$(dialog_player_in_water)"