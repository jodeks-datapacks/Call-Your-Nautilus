$execute unless entity @s[predicate=call_your_nautilus:no_player_on_mount] run execute as @a[nbt={UUID:$(UUID)},limit=1] run return run function call_your_nautilus:app/feedback/fail {translate:"call_your_nautilus.fail.player_on_nautilus",fallback:"There's a player on the nautilus"}

execute as @s run function jodek:api/data/get/owner with storage call_your_nautilus:root data

data modify storage call_your_nautilus:root data.UUID_temp set from storage call_your_nautilus:root data.UUID
execute store success score &UUID_check call_your_nautilus.check run data modify storage call_your_nautilus:root data.UUID_temp set from entity @s Owner

execute unless data entity @s Owner run scoreboard players set &UUID_check call_your_nautilus.check 1

$execute as @a[nbt={UUID:$(UUID)},limit=1] if score &UUID_check call_your_nautilus.check matches 1 run \
  return run function call_your_nautilus:app/feedback/fail {translate:"call_your_nautilus.fail.no_owner",fallback:"You're not the owner of this nautilus"}

execute as @s if score &UUID_check call_your_nautilus.check matches 0 run function call_your_nautilus:app/call/execute/move/teleport_to_player with storage call_your_nautilus:root data