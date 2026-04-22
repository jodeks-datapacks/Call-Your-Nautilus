scoreboard players set @a call_your_nautilus.config 0

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
      "label": {\
        "translate": "call_your_nautilus.config.no_player_on_nautilus",\
        "fallback": "Calling doesn't work when player is mounting the Nautilus"\
      },\
      "initial": $(no_player_on_nautilus),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_mount_automatically",\
       "label": {\
        "translate": "call_your_nautilus.config.mount_automatically",\
        "fallback": "Automatically mount the Nautilus after calling it"\
      },\
      "initial": $(mount_automatically),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dialog_player_in_water_check",\
      "label": {\
        "translate": "call_your_nautilus.config.player_in_water_check",\
        "fallback": "Calling only works when the player is in water"\
      },\
      "initial": $(player_in_water_check),\
      "on_true": "1",\
      "on_false": "0"\
    }\
  ],\
  columns:1,\
  actions:[\
    {\
        "label": {\
        "translate": "jodek.save",\
        "fallback": "Save"\
      },\
      "action": {\
        type:"dynamic/run_command",\
        template:"function call_your_nautilus:config/save_config {player_in_water_check:$(player_in_water_check), dialog_no_player_on_nautilus:$(dialog_no_player_on_nautilus), dialog_mount_automatically:$(dialog_mount_automatically)}"\
      }\
    }\
  ]\
}