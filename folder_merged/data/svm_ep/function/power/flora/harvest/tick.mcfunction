scoreboard players add @s svm_ep.p.flora_ability_08_delay 1
execute unless predicate svm_ep:holding_ability run return run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.mana=2..}] run return run scoreboard players reset @s svm_ep.using_move

scoreboard players add @s svm_ep.using_move 1

function svm_ep:power/flora/harvest/send_raycast