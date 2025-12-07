execute at @s run loot spawn ~ ~100 ~ loot callyournautilus:player_head
data modify storage callyournautilus:root player_name set from entity @e[nbt={Item:{components:{"minecraft:custom_data":{callyournautilus_playername:1b}}}},limit=1] Item.components."minecraft:profile".name
kill @e[nbt={Item:{components:{"minecraft:custom_data":{callyournautilus_playername:1b}}}}]