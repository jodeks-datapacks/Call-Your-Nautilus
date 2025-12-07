$scoreboard players remove $(nautilus_UUID_from_horn_0) callyournautilus.bound_goat_horns 1

$item replace entity @s hotbar.$(goat_horn_slot) with goat_horn[instrument="$(goat_horn_instrument)"]

$execute if score $(nautilus_UUID_from_horn_0) callyournautilus.bound_goat_horns matches 0 run say djdj

$execute if score $(nautilus_UUID_from_horn_0) callyournautilus.bound_goat_horns matches 0 run data remove entity @e[type=nautilus,tag=nautilus_can_called,nbt={UUID:$(nautilus_UUID_from_horn)},limit=1] data.Owner

$tag @e[type=nautilus,tag=nautilus_can_called,nbt={UUID:$(nautilus_UUID_from_horn)},limit=1] remove nautilus_can_called

$data remove storage callyournautilus:root nautilus_Pos."$(nautilus_UUID_from_horn).x"

$data remove storage callyournautilus:root nautilus_Pos."$(nautilus_UUID_from_horn).z"

$say $(nautilus_UUID_from_horn_0)

data remove storage callyournautilus:root goat_horn_instrument
data remove storage callyournautilus:root goat_horn_slot
data remove storage callyournautilus:root nautilus_UUID_from_horn
data remove storage callyournautilus:root nautilus_UUID_from_horn_0
