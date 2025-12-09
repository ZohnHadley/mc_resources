
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{player_hurt_entity:{mainhand:{}}}] run function ci:input/action/player_hurt_entity/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{player_hurt_entity:{offhand:{}}}] run function ci:input/action/player_hurt_entity/offhand
execute if items entity @s armor.head *[minecraft:custom_data~{player_hurt_entity:{head:{}}}] run function ci:input/action/player_hurt_entity/head
execute if items entity @s armor.chest *[minecraft:custom_data~{player_hurt_entity:{chest:{}}}] run function ci:input/action/player_hurt_entity/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{player_hurt_entity:{legs:{}}}] run function ci:input/action/player_hurt_entity/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{player_hurt_entity:{feet:{}}}] run function ci:input/action/player_hurt_entity/feet

function ci:input/after