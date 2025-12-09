execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.mana=..1}] svm_ep.using_move

scoreboard players add @s svm_ep.using_move 1
function svm_ep:power/fire/flame/start_raycast