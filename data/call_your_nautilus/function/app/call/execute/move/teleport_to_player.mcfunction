$teleport @s @a[nbt={UUID:$(UUID)},limit=1]

scoreboard players set &teleported call_your_nautilus.check 1

execute if score &mount_automatically call_your_nautilus.config matches 1 if score &mounted call_your_nautilus.check matches 0 run function call_your_nautilus:app/call/execute/post/mount with storage call_your_nautilus:root data