#we have $(id) as ofc id also name and color
data remove storage ci:temp dialogs
$data modify storage ci:temp name set value "$(name)"
$data modify storage ci:temp color set value $(color)
$data modify storage ci:temp dialogs set from storage ci:items section.$(id)
$execute store result score %count ci.math if data storage ci:items section.$(id)[]
scoreboard players operation %count ci.math %= %3 ci.math


execute if score %count ci.math matches 1 run data modify storage ci:temp dialogs insert -2 value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}
execute if score %count ci.math matches 1..2 run data modify storage ci:temp dialogs append value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}


data modify storage ci:temp dialogs append value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}
$data modify storage ci:temp dialogs append value {label:{"text":"🛠 Add item 🛠",color:aqua},width:160,action:{type:"minecraft:run_command",command:"function ci:dialog/items/add_item_init {section:$(id)}"}}
data modify storage ci:temp dialogs append value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}
data modify storage ci:temp dialogs append value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}
$data modify storage ci:temp dialogs append value {label:{"text":"❌ Remove section ❌",color:red},width:130,action:{type:"minecraft:run_command",command:"data remove storage ci:items sections[{id:$(id)}]"}}
data modify storage ci:temp dialogs append value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}

function ci:dialog/items/display_section_macro with storage ci:temp