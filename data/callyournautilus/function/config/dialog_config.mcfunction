scoreboard players set @a callyournautilus.config 0

say $(dialog_no_player_on_nautilus)

$dialog show @s {\
  type:"minecraft:multi_action",\
  title:"Call Your Nautilus Config",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:goat_horn"\
      }\
    }\
  ],\
  inputs:[\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_no_player_on_nautilus",\
      "label": "Calling doesn't work when player is mounting the Nautilus",\
      "initial": $(no_player_on_nautilus),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_mount_automatically",\
      "label": "Automatically mount the Nautilus after calling it",\
      "initial": $(mount_automatically),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_mount_automatically",\
      "label": "Automatically mount the Nautilus after calling it",\
      "initial": $(player_in_water_check),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_nautilus_owner",\
      "label": "Only the first player that bound a horn to a Nautilus can call it",\
      "initial": $(nautilus_owner),\
      "on_true": "1",\
      "on_false": "0"\
    },\
  ],\
  columns:1,\
    "exit_action": {\
    "label": "Save",\
    "action": {\
      type:"dynamic/run_command",\
      template:"function callyournautilus:config/save_config {player_in_water_check:$(player_in_water_check),dialog_nautilus_owner:$(dialog_nautilus_owner), dialog_no_player_on_nautilus:$(dialog_no_player_on_nautilus), dialog_mount_automatically:$(dialog_mount_automatically)}"\
    }\
  },\
  actions:[\
    {\
      "label": "Save",\
      "action": {\
        type:"dynamic/run_command",\
        template:"function callyournautilus:config/save_config {player_in_water_check:$(player_in_water_check),dialog_nautilus_owner:$(dialog_nautilus_owner), dialog_no_player_on_nautilus:$(dialog_no_player_on_nautilus), dialog_mount_automatically:$(dialog_mount_automatically)}"\
      }\
    }\
  ]\
}