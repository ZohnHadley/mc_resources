
execute unless entity @e[tag=svm_ep.cacti_grenade,distance=..50] run return run scoreboard players reset @s svm_ep.using_move
execute as @e[tag=svm_ep.cacti_grenade,distance=..50] on vehicle positioned ^ ^ ^-0.33 run function svm_ep:power/flora/cacti_grenade/w_motion/motion


scoreboard players add @s svm_ep.mana_drain 15
