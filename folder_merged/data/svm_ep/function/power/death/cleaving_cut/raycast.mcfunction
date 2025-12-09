scoreboard players remove %raycast_length svm_ep.numbers 1

tag @e[distance=..2.5,type=!#svm_ep:technical,tag=!executor] add hitby
tag @e[dx=0,type=!#svm_ep:technical,tag=!executor] add hitby
particle minecraft:sweep_attack ~ ~ ~ 0.1 0.1 0.1 0 3
particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 1 30
playsound minecraft:entity.wither_skeleton.hurt master @a[distance=..25] ~ ~1 ~ 0.2 0

execute if score %raycast_length svm_ep.numbers matches 1.. positioned ^ ^ ^0.4 run function svm_ep:power/death/cleaving_cut/raycast