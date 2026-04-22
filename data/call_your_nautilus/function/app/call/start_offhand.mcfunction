advancement revoke @s only call_your_nautilus:used/goat_horn_offhand

scoreboard players set &UUID_check call_your_nautilus.check 1

execute as @s run function jodek:api/data/get/offhand_stored_uuid with storage call_your_nautilus:root data

execute unless data storage call_your_nautilus:root data.UUID_from_item run return run function call_your_nautilus:app/feedback/fail {translate:"call_your_nautilus.fail.no_uuid_item",fallback:"Failed to get entity UUID from item"}
# execute unless score &time_since_goat_horn_use call_your_nautilus.check matches 0 run return run function call_your_nautilus:app/feedback/fail {translate:"call_your_nautilus.fail.call_already_in_progress",fallback:"Your nautilus didn't hear you, try again"}

execute if score &player_in_water_check call_your_nautilus.config matches 1 run execute unless entity @s[predicate=call_your_nautilus:player_in_water] run return run function call_your_nautilus:app/feedback/fail {translate:"call_your_nautilus.fail.not_in_water",fallback:"You need to be in water to call your nautilus!"}

execute as @s run function call_your_nautilus:app/call/get_data with storage call_your_nautilus:root