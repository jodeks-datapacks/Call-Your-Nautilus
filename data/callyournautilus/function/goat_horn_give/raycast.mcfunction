execute positioned ~-0.05 ~-0.05 ~-0.05 as @e[distance=..10,type=nautilus] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run return run function callyournautilus:goat_horn_give/tag

scoreboard players add #steps raycast_steps.callyournautilus 1

execute if score #steps raycast_steps.callyournautilus <= #max raycast_steps.callyournautilus positioned ^ ^ ^0.1 run function callyournautilus:goat_horn_give/raycast