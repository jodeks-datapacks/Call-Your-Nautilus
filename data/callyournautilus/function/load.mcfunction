
scoreboard objectives add check.callyournautilus dummy

scoreboard objectives add use_goat_horn_nautilus used:goat_horn

scoreboard objectives add store_position.callyournautilus dummy

scoreboard objectives add sneak_time.callyournautilus custom:sneak_time

scoreboard objectives add callyournautilus.image dummy

scoreboard objectives add raycast_steps.callyournautilus dummy

scoreboard objectives add callyournautilus.config trigger

scoreboard players set @a sneak_time.callyournautilus 0

scoreboard players set @a callyournautilus.config 0

scoreboard players set @a use_goat_horn_nautilus 0
scoreboard players set &time_since_goat_horn_use check.callyournautilus 0

scoreboard players set &teleported check.callyournautilus 0

scoreboard players set &mounted check.callyournautilus 0

scoreboard objectives add callyournautilus.bound_goat_horns dummy


function callyournautilus:config/image

schedule function callyournautilus:schedule_save_uuid 1s

function callyournautilus:config/defaults