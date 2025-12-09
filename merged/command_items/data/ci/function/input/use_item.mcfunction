
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{use_item:{mainhand:{}}}] run function ci:input/action/use_item/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{use_item:{offhand:{}}}] run function ci:input/action/use_item/offhand
execute if items entity @s armor.head *[minecraft:custom_data~{use_item:{head:{}}}] run function ci:input/action/use_item/head
execute if items entity @s armor.chest *[minecraft:custom_data~{use_item:{chest:{}}}] run function ci:input/action/use_item/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{use_item:{legs:{}}}] run function ci:input/action/use_item/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{use_item:{feet:{}}}] run function ci:input/action/use_item/feet

function ci:input/after