execute if block ~ ~ ~ #minecraft:ice run tag @s add teleport
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
tag @s[tag=teleport] add end_raycast
execute unless entity @s[distance=..6] run tag @s add end_raycast
execute as @s[tag=end_raycast,tag=!teleport] run tellraw @s {"text":"Requires ice block at cursor!","color":"red"}
execute at @s[tag=end_raycast,tag=!teleport] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0.8

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.2 run function svm_ep:power/ice/launch/raycast
tag @s remove end_raycast
execute as @s[tag=teleport] run function svm_ep:power/ice/launch/summon0
