execute if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.using_move 1

execute at @s anchored eyes positioned ^ ^ ^2.4 run function svm_ep:power/slime/barrier/place
execute at @s unless predicate svm_ep:holding_ability run function svm_ep:power/slime/barrier/summon0
scoreboard players add @s svm_ep.p.slime_ability_06_delay 2
scoreboard players set @s[scores={svm_ep.p.slime_ability_06_delay=200}] svm_ep.p.slime_ability_06_delay 200
