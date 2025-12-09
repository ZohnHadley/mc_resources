# ARGS
# $(section) SECTION
# $(id) ITEM ID
# $(name)
# $(color)
#new args {section:$(section),id:$(id),command:"$(command)",name:"$(name)",color:$(color)}
$data modify storage ci:items items.$(section).$(id).Item set from entity @s SelectedItem
$execute if data storage ci:items section.$(section)[{id:$(id)}] run data remove storage ci:items sections.$(section)[{id:$(id)}]
$data modify storage ci:items section.$(section) append value {id:$(id),"label":{"text":"$(name)","color":"$(color)"},"width":100,"action":{"type":"minecraft:run_command","command":"function ci:dialog/items/give_item with storage ci:items items.$(section).$(id)"}}

return 0
$say sect $(section)
$say id $(id)
$say nm $(name)
$say cl $(color)