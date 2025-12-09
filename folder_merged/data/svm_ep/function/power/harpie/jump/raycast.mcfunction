execute if block ~ ~ ~ slime_block run tag @s add teleport
execute if entity @e[type=minecraft:slime,dx=0] run tag @s add teleport
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
tag @s[tag=teleport] add end_raycast
execute unless entity @s[distance=..50] run tag @s add end_raycast
execute as @s[tag=end_raycast,tag=!teleport] run tellraw @s {"text":"Requires slime block at cursor!","color":"red"}
execute at @s[tag=end_raycast,tag=!teleport] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0.8

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.2 run function svm_ep:power/slime/slimeport/raycast
tag @s remove end_raycast
execute as @s[tag=teleport] run function svm_ep:power/slime/slimeport/tp
