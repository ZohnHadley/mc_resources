execute at @s anchored eyes if block ^ ^ ^ #svm_ep:phasing_moss_works_on run tag @s add start
execute at @s anchored eyes if block ^ ^ ^0.5 #svm_ep:phasing_moss_works_on run tag @s add start
execute at @s anchored eyes if block ^ ^ ^1 #svm_ep:phasing_moss_works_on run tag @s add start
execute at @s anchored eyes if block ^ ^ ^1.5 #svm_ep:phasing_moss_works_on run tag @s add start
execute at @s anchored eyes if block ^ ^ ^2 #svm_ep:phasing_moss_works_on run tag @s add start
scoreboard players reset @s[scores={svm_ep.using_move=..2061}] svm_ep.using_move
execute as @s[tag=start] run function svm_ep:power/flora/phasing_moss/start
execute as @s[tag=start] run scoreboard players reset @s svm_ep.using_move
tag @s remove start
scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s svm_ep.p.flora_ability_30_delay 1