execute as @s run function jodek:api/data/get/uuid with storage call_your_nautilus:root data

execute as @e[predicate=call_your_nautilus:callable,limit=1,tag=jodek.bind_target] unless data entity @s Owner run function call_your_nautilus:app/bind/set_owner with storage call_your_nautilus:root data

execute as @e[predicate=call_your_nautilus:callable,limit=1,tag=jodek.bind_target] run function jodek:api/data/get/owner with storage call_your_nautilus:root data

execute store success score &UUID_check call_your_nautilus.check run data modify storage call_your_nautilus:root data.Owner set from entity @s UUID

execute if score &UUID_check call_your_nautilus.check matches 1 run \
  return run function call_your_nautilus:app/feedback/fail {translate:"call_your_nautilus.fail.no_owner",fallback:"You're not the owner of this nautilus"}

execute if score &UUID_check call_your_nautilus.check matches 0 run function call_your_nautilus:app/bind/get_data