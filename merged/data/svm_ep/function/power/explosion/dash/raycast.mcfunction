scoreboard players remove @s svm_ep.p.explosion_launch_charge 1
execute unless block ^ ^ ^0.35 #svm_ep:no_physical_hitbox run scoreboard players reset @s svm_ep.p.explosion_launch_charge

particle minecraft:dust{color:[0.1f,0.1f,0.1f],scale:2f} ~ ~0.8 ~ 1 1 1 0 3
particle minecraft:dust{color:[0.2f,0.2f,0.2f],scale:2f} ~ ~0.8 ~ 0.8 0.8 0.8 0 3
particle minecraft:dust{color:[0.3f,0.3f,0.3f],scale:2f} ~ ~0.8 ~ 0.5 0.5 0.5 0 3

particle minecraft:explosion ~ ~ ~ 0.74 0.74 0.74 0 1
particle minecraft:flame ~ ~0.8 ~ 0 0 0 1.4 5

particle minecraft:dust{color:[1f,0.3f,0.1f],scale:2f} ~ ~0.8 ~ 0.75 0.75 0.75 0 1
particle minecraft:dust{color:[1f,0.3f,0.1f],scale:2f} ~ ~0.8 ~ 0.5 0.5 0.5 0 1
particle minecraft:dust{color:[18000000f,0.6f,0.2f],scale:2f} ~ ~0.8 ~ 0.25 0.25 0.25 0 1
particle minecraft:dust{color:[18000000f,1f,0.33f],scale:1.5f} ~ ~0.8 ~ 0 0 0 0 1

execute unless entity @s[scores={svm_ep.p.explosion_launch_charge=1..}] run tp @s ~ ~-0.5 ~
execute unless entity @s[scores={svm_ep.p.explosion_launch_charge=1..}] at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox positioned ~ ~1 ~ align y run tp @s ~ ~ ~
execute as @s[scores={svm_ep.p.explosion_launch_charge=1..}] positioned ^ ^ ^0.35 run function svm_ep:power/explosion/dash/raycast
