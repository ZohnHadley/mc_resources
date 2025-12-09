
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^2.5 run function svm_ep:power/flora/rooted_bridge/raycast
tag @s remove executor
scoreboard players reset @s[scores={svm_ep.mana=..0}] svm_ep.using_move

scoreboard players remove @s[scores={svm_ep.mana=1..}] svm_ep.mana 1
scoreboard players add @s[scores={svm_ep.used_move=..400},tag=end_raycast1] svm_ep.used_move 2

tag @s remove end_raycast
tag @s remove end_raycast1
scoreboard players reset @s[scores={svm_ep.using_move=290}] svm_ep.using_move
