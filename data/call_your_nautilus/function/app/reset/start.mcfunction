execute as @s run function jodek:api/data/get/audioplayer with storage call_your_nautilus:root data
execute as @s run function jodek:api/data/get/instrument with storage call_your_nautilus:root data
execute as @s run function jodek:api/data/get/selected_item_slot with storage call_your_nautilus:root data

execute as @s run function jodek:api/data/get/selected_item_stored_uuid with storage call_your_nautilus:root data

function call_your_nautilus:app/reset/update_horn with storage call_your_nautilus:root data