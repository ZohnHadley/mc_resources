
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{using_item:{mainhand:{}}}] run function ci:input/action/using_item/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{using_item:{offhand:{}}}] run function ci:input/action/using_item/offhand
execute if items entity @s armor.head *[minecraft:custom_data~{using_item:{head:{}}}] run function ci:input/action/using_item/head
execute if items entity @s armor.chest *[minecraft:custom_data~{using_item:{chest:{}}}] run function ci:input/action/using_item/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{using_item:{legs:{}}}] run function ci:input/action/using_item/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{using_item:{feet:{}}}] run function ci:input/action/using_item/feet

function ci:input/after