#> callyournautilus:app/load_message
# Called on load

tellraw @a [\
  "",\
  {\
    text: "[",\
    color: "#aaaaaa"\
  },\
  {\
    text: "Call Your Nautilus",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "callyournautilus:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/call-your-nautilus/"\
    }\
  },\
  {\
    text: "]",\
    color: "#aaaaaa",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "callyournautilus:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/call-your-nautilus/"\
    }\
  },\
  {\
    text: " loaded! ",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "callyournautilus:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/call-your-nautilus/"\
    }\
  },\
  {\
    text: "hover for more info",\
    color: "#929796",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "callyournautilus:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/call-your-nautilus/"\
    }\
  }\
]