effect give @s minecraft:slowness 1 3 true
scoreboard players set @s svm_ep.numbers 0
execute unless predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.numbers 1

scoreboard players add @s svm_ep.p.time_ability_03_delay 1

execute as @s[scores={svm_ep.using_move=..260}] run scoreboard players set @s svm_ep.numbers 2
execute as @s[scores={svm_ep.numbers=1..}] run function svm_ep:power/time/skip/skip
