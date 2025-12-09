scoreboard players set @s svm_ep.using_move 250

execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.mana=..2}] svm_ep.using_move

execute at @s anchored eyes positioned ^ ^ ^1.5 run function svm_ep:power/slime/extend/raycast
tag @s remove teleport
tag @s remove end_raycast
