execute if entity @e[dx=0,tag=same_id] run tag @s add end_raycast
particle minecraft:dust{color:[0f,1f,0.98f],scale:2f} ~ ~0.2 ~ 0 0 0 0 1
particle minecraft:dust{color:[1f,0.87f,0f],scale:1f} ~ ~1 ~ 0.25 0.25 0.25 0 3
tp @s ^ ^ ^0.45 facing entity @e[tag=same_id,limit=1] eyes
execute at @s[tag=!end_raycast] run function svm_ep:power/lightning/lightning_place/raycast2