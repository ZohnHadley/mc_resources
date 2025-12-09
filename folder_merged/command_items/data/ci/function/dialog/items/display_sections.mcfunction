data remove storage ci:temp dialogs
data modify storage ci:temp dialogs set from storage ci:items sections
#data modify storage ci:temp dialogs append value {"label":"","width":1,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}
data modify storage ci:temp dialogs append value {"label":[{"text":"d","obfuscated":true,"color":"green"},{"text":" Add New Section ","obfuscated":false,"color":"green"},{"text":"d","obfuscated":true,"color":"green"}],"width":120,"action":{"type":"minecraft:show_dialog","dialog":"ci:new_item_section"}}
function ci:dialog/items/display_macro with storage ci:temp