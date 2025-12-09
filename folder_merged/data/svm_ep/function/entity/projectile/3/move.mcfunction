execute at @s run tp @s ^ ^ ^0.42 ~ ~0.55
#execute at @s run particle minecraft:item{item:slime_ball} ~ ~ ~ 0 0 0 0.06 1
particle dust{color:[0.35f,0.8f,0.3f],scale:0.5f} ~ ~ ~ 0.15 0.15 0.15 0 1
particle dust{color:[0.45f,0.95f,0.4f],scale:0.75f} ~ ~ ~ 0.25 0.25 0.25 0 1


execute as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hit
execute as @e[tag=!same_id,distance=..1.5,type=!#svm_ep:technical] run tag @s add hit
execute if entity @e[distance=..10,tag=hit,type=!#svm_ep:technical] run tag @s add hit
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
