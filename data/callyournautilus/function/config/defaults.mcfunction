execute unless score &no_player_on_nautilus callyournautilus.config = &no_player_on_nautilus callyournautilus.config run data modify storage callyournautilus:root no_player_on_nautilus set value 0

execute unless score &no_player_on_nautilus callyournautilus.config = &no_player_on_nautilus callyournautilus.config run scoreboard players set &no_player_on_nautilus callyournautilus.config 0

data modify storage callyournautilus:root dialog_no_player_on_nautilus set value "$(dialog_no_player_on_nautilus)"


execute unless score &mount_automatically callyournautilus.config = &mount_automatically callyournautilus.config run data modify storage callyournautilus:root mount_automatically set value 0

execute unless score &mount_automatically callyournautilus.config = &mount_automatically callyournautilus.config run scoreboard players set &mount_automatically callyournautilus.config 0

data modify storage callyournautilus:root dialog_mount_automatically set value "$(dialog_mount_automatically)"


execute unless score &nautilus_owner callyournautilus.config = &nautilus_owner callyournautilus.config run data modify storage callyournautilus:root nautilus_owner set value 0

execute unless score &nautilus_owner callyournautilus.config = &nautilus_owner callyournautilus.config run scoreboard players set &nautilus_owner callyournautilus.config 0

data modify storage callyournautilus:root dialog_nautilus_owner set value "$(dialog_nautilus_owner)"


execute unless score &player_in_water_check callyournautilus.config = &player_in_water_check callyournautilus.config run data modify storage callyournautilus:root player_in_water_check set value 1

execute unless score &player_in_water_check callyournautilus.config = &player_in_water_check callyournautilus.config run scoreboard players set &player_in_water_check callyournautilus.config 1

data modify storage callyournautilus:root dialog_player_in_water set value "$(dialog_player_in_water)"