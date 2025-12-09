
execute if items entity @s armor.head *[minecraft:custom_data~{tick:{head:{}}}] run function ci:input/action/tick/head
execute if items entity @s armor.chest *[minecraft:custom_data~{tick:{chest:{}}}] run function ci:input/action/tick/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{tick:{legs:{}}}] run function ci:input/action/tick/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{tick:{feet:{}}}] run function ci:input/action/tick/feet

function ci:input/after


#execute if score %cooldown1 ci.math matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{tick:{mainhand:{show_cooldown:{}}}}] run function ci:other/message/on_cooldown
