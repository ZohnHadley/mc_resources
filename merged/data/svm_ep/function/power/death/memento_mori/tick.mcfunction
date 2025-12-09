effect give @s minecraft:slowness 1 1 true

execute as @s[scores={svm_ep.using_move=..95}] unless predicate svm_ep:holding_ability run return run scoreboard players reset @s svm_ep.using_move

scoreboard players set %mobs_in_radius svm_ep.numbers 0
tag @s add executor
execute as @e[distance=..5,type=!#svm_ep:technical,tag=!executor] run function svm_ep:power/death/life_drain/drain
tag @s remove executor

scoreboard players add @s svm_ep.p.death_ability_02_delay 1


particle minecraft:smoke ~ ~0.1 ~ 2.5 0.1 2.5 0.1 10
particle minecraft:ash ~ ~0.1 ~ 2.5 2.5 2.5 0.1 5

execute if score %mobs_in_radius svm_ep.numbers matches 0 run return 0
execute if score %mobs_in_radius svm_ep.numbers matches 1..5 run return run effect give @s minecraft:regeneration 1 3 true
execute if score %mobs_in_radius svm_ep.numbers matches 6..10 run return run effect give @s minecraft:regeneration 2 4 true
execute if score %mobs_in_radius svm_ep.numbers matches 11.. run return run effect give @s minecraft:regeneration 2 6 true
