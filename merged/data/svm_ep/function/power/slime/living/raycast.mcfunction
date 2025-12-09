execute if block ~ ~ ~ slime_block run tag @s add teleport
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
tag @s[tag=teleport] add end_raycast
execute unless entity @s[distance=..25] run tag @s add end_raycast
execute as @s[tag=end_raycast,tag=!teleport] run tellraw @s {"text":"Requires slime block at cursor!","color":"red"}
execute at @s[tag=end_raycast,tag=!teleport] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 0.8

execute as @s[tag=teleport] align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/slime/living/summon
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.5 run function svm_ep:power/slime/living/raycast
