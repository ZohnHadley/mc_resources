tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^1 summon marker run function svm_ep:power/flora/leaf_storm/setup
tag @s remove executor

scoreboard players reset @s[scores={svm_ep.using_move=..1780}] svm_ep.using_move
