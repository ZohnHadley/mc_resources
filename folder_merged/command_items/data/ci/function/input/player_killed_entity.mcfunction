
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{player_killed_entity:{mainhand:{}}}] run function ci:input/action/player_killed_entity/mainhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{player_killed_entity:{offhand:{}}}] run function ci:input/action/player_killed_entity/offhand
execute if items entity @s armor.head *[minecraft:custom_data~{player_killed_entity:{head:{}}}] run function ci:input/action/player_killed_entity/head
execute if items entity @s armor.chest *[minecraft:custom_data~{player_killed_entity:{chest:{}}}] run function ci:input/action/player_killed_entity/chest
execute if items entity @s armor.legs *[minecraft:custom_data~{player_killed_entity:{legs:{}}}] run function ci:input/action/player_killed_entity/legs
execute if items entity @s armor.feet *[minecraft:custom_data~{player_killed_entity:{feet:{}}}] run function ci:input/action/player_killed_entity/feet

function ci:input/after