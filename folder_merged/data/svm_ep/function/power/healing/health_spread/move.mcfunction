
particle minecraft:dust{color:[18000000f,0.7f,1f],scale:0.75f} ~ ~ ~ 0.1 0.1 0.1 0 1
particle minecraft:dust{color:[1f,0.1f,0.3f],scale:0.75f} ~ ~ ~ 0.21 0.21 0.21 0 1

execute if entity @n[distance=..2,tag=same_id] run tag @s add hit
execute if entity @n[dx=0,tag=same_id] run tag @s add hit
tp @s ^ ^ ^0.25