$scoreboard players remove $(nautilus_UUID_from_horn_0) call_your_nautilus.bound_goat_horns 1

$item replace entity @s hotbar.$(goat_horn_slot) with goat_horn[instrument="$(goat_horn_instrument)"]

$execute if score $(nautilus_UUID_from_horn_0) call_your_nautilus.bound_goat_horns matches 0 run data remove entity @e[type=nautilus,tag=nautilus_can_called,nbt={UUID:$(nautilus_UUID_from_horn)},limit=1] data.Owner

$tag @e[type=nautilus,tag=nautilus_can_called,nbt={UUID:$(nautilus_UUID_from_horn)},limit=1] remove nautilus_can_called

$data remove storage call_your_nautilus:root data.nautilus_Pos."$(nautilus_UUID_from_horn).x"

$data remove storage call_your_nautilus:root data.nautilus_Pos."$(nautilus_UUID_from_horn).z"

data remove storage call_your_nautilus:root data.goat_horn_instrument
data remove storage call_your_nautilus:root data.goat_horn_slot
data remove storage call_your_nautilus:root data.nautilus_UUID_from_horn
data remove storage call_your_nautilus:root data.nautilus_UUID_from_horn_0
