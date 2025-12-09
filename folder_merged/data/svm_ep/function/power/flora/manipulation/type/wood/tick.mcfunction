execute unless entity @e[tag=svm_ep.flora_wood_marker,tag=!svm_ep.flora_cannot_regrow,distance=..50] run return run scoreboard players reset @s svm_ep.using_move
execute as @e[tag=svm_ep.flora_wood_marker,distance=..50] positioned ^ ^ ^-0.33 align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/flora/manipulation/type/wood/manipulate


scoreboard players add @s svm_ep.mana_drain 15
