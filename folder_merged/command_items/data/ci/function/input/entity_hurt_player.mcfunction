

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{entity_hurt_player:{mainhand:{}}}] run function ci:input/action/entity_hurt_player/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{entity_hurt_player:{offhand:{}}}] run function ci:input/action/entity_hurt_player/offhand
execute if items entity @s armor.head *[minecraft:custom_data~{entity_hurt_player:{head:{}}}] run function ci:input/action/entity_hurt_player/head
execute if items entity @s armor.chest *[minecraft:custom_data~{entity_hurt_player:{chest:{}}}] run function ci:input/action/entity_hurt_player/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{entity_hurt_player:{legs:{}}}] run function ci:input/action/entity_hurt_player/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{entity_hurt_player:{feet:{}}}] run function ci:input/action/entity_hurt_player/feet

function ci:input/after