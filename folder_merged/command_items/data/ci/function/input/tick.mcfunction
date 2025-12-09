
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{tick:{mainhand:{}}}] run function ci:input/action/tick/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{tick:{offhand:{}}}] run function ci:input/action/tick/offhand

function ci:input/after


#execute if score %cooldown1 ci.math matches 1.. if items entity @s weapon.mainhand *[minecraft:custom_data~{tick:{mainhand:{show_cooldown:{}}}}] run function ci:other/message/on_cooldown
