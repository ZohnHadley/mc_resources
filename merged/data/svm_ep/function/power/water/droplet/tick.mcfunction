scoreboard players add @s svm_ep.p.water_ability_05_delay 1
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.mana=..2}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=..485}] svm_ep.using_move

execute as @s[scores={svm_ep.using_move=496..}] run return 0
execute at @s anchored eyes positioned ^ ^ ^2 run function svm_ep:power/water/droplet/spawn
scoreboard players add @s svm_ep.used_move 2
scoreboard players remove @s svm_ep.mana 2
