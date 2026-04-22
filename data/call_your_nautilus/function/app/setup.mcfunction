scoreboard objectives add jodek.config dummy
execute unless score &call_your_nautilus_load_message jodek.config = &call_your_nautilus_load_message jodek.config run scoreboard players set &call_your_nautilus_load_message jodek.config 1
execute unless score &call_your_nautilus_advancements jodek.config = &call_your_nautilus_advancements jodek.config run scoreboard players set &call_your_nautilus_advancements jodek.config 1

scoreboard objectives add call_your_nautilus.check dummy

scoreboard objectives add call_your_nautilus.image dummy

scoreboard objectives add call_your_nautilus.config trigger
scoreboard players set @a call_your_nautilus.config 0

scoreboard players set &time_since_goat_horn_use call_your_nautilus.check 0

scoreboard players set &teleported call_your_nautilus.check 0

scoreboard players set &mounted call_your_nautilus.check 0

function call_your_nautilus:config/image

schedule function call_your_nautilus:app/schedule/save/run 1s

function call_your_nautilus:config/set_default

data modify storage call_your_nautilus:root data.target set value call_your_nautilus

schedule function call_your_nautilus:lib_check 1s

scoreboard objectives add call_your_nautilus.sneak_time custom:sneak_time
scoreboard players set @a call_your_nautilus.sneak_time 0