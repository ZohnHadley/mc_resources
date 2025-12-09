execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add teleport
tag @s[tag=teleport] add end_raycast
execute unless entity @s[distance=..150] run tag @s add end_raycast
execute as @s[tag=end_raycast,tag=!teleport] run tellraw @s {"text":"Requires block at cursor!","color":"red"}
execute at @s[tag=end_raycast,tag=!teleport] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0.8

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.2 run function svm_ep:power/explosion/destroyer/raycast
tag @s remove end_raycast
execute as @s[tag=teleport] run function svm_ep:power/explosion/destroyer/summon
tag @s remove teleport
