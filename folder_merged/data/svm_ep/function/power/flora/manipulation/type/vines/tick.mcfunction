execute unless entity @e[tag=svm_ep.flora_vine_marker,distance=..50] run return run scoreboard players reset @s svm_ep.using_move
execute as @n[tag=svm_ep.flora_vine_marker,distance=..50] run function svm_ep:power/flora/manipulation/type/vines/shoot


