execute on target run tag @s add target

execute at @s unless entity @e[tag=target] run damage @s 1 minecraft:mob_attack by @e[distance=0.1..,sort=nearest,limit=1,type=!#svm_ep:technical,type=!zombie]

execute on target run tag @s remove target