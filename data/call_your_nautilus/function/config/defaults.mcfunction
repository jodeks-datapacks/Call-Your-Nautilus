execute unless score &no_player_on_nautilus call_your_nautilus.config = &no_player_on_nautilus call_your_nautilus.config run data modify storage call_your_nautilus:root data.no_player_on_nautilus set value 0

execute unless score &no_player_on_nautilus call_your_nautilus.config = &no_player_on_nautilus call_your_nautilus.config run scoreboard players set &no_player_on_nautilus call_your_nautilus.config 0

data modify storage call_your_nautilus:root data.dialog_no_player_on_nautilus set value "$(dialog_no_player_on_nautilus)"


execute unless score &mount_automatically call_your_nautilus.config = &mount_automatically call_your_nautilus.config run data modify storage call_your_nautilus:root data.mount_automatically set value 0

execute unless score &mount_automatically call_your_nautilus.config = &mount_automatically call_your_nautilus.config run scoreboard players set &mount_automatically call_your_nautilus.config 0

data modify storage call_your_nautilus:root data.dialog_mount_automatically set value "$(dialog_mount_automatically)"


execute unless score &nautilus_owner call_your_nautilus.config = &nautilus_owner call_your_nautilus.config run data modify storage call_your_nautilus:root data.nautilus_owner set value 0

execute unless score &nautilus_owner call_your_nautilus.config = &nautilus_owner call_your_nautilus.config run scoreboard players set &nautilus_owner call_your_nautilus.config 0

data modify storage call_your_nautilus:root data.dialog_nautilus_owner set value "$(dialog_nautilus_owner)"


execute unless score &player_in_water_check call_your_nautilus.config = &player_in_water_check call_your_nautilus.config run data modify storage call_your_nautilus:root data.player_in_water_check set value 1

execute unless score &player_in_water_check call_your_nautilus.config = &player_in_water_check call_your_nautilus.config run scoreboard players set &player_in_water_check call_your_nautilus.config 1

data modify storage call_your_nautilus:root data.dialog_player_in_water set value "$(dialog_player_in_water)"