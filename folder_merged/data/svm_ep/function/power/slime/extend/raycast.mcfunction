execute if block ^ ^ ^ slime_block run tag @s add teleport
execute if block ^ ^ ^0.75 slime_block run tag @s add teleport
execute if block ^ ^ ^0.5 slime_block run tag @s add teleport
execute if block ^0.75 ^ ^ slime_block run tag @s add teleport
execute if block ^-0.75 ^ ^ slime_block run tag @s add teleport
execute if block ^ ^0.75 ^ slime_block run tag @s add teleport
execute if block ^ ^-0.75 ^ slime_block run tag @s add teleport
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
tag @s[tag=teleport] add end_raycast
execute unless entity @s[distance=..75] run tag @s add end_raycast
#execute as @s[tag=end_raycast,tag=!teleport] run tellraw @s {"text":"Requires slime block at cursor!","color":"red"}
#execute at @s[tag=end_raycast,tag=!teleport] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0.8

execute as @s[tag=teleport] if block ~ ~ ~ #svm_ep:no_physical_hitbox run function svm_ep:power/slime/extend/extend
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.2 run function svm_ep:power/slime/extend/raycast
