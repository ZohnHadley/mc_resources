
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{inventory_changed:{mainhand:{}}}] run function ci:input/action/inventory_changed/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{inventory_changed:{offhand:{}}}] run function ci:input/action/inventory_changed/offhand
execute if items entity @s armor.head *[minecraft:custom_data~{inventory_changed:{head:{}}}] run function ci:input/action/inventory_changed/head
execute if items entity @s armor.chest *[minecraft:custom_data~{inventory_changed:{chest:{}}}] run function ci:input/action/inventory_changed/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{inventory_changed:{legs:{}}}] run function ci:input/action/inventory_changed/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{inventory_changed:{feet:{}}}] run function ci:input/action/inventory_changed/feet

function ci:input/after