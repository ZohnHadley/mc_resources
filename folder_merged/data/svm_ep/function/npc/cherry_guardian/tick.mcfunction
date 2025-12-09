tag @s add executor

execute on target at @s as @e[tag=executor] unless score @s svm_ep.p.flora_ability_04_delay matches 1.. if entity @s[distance=..2.5] run function svm_ep:power/flora/ability/use/4
effect give @s[scores={svm_ep.using_move=1..}] minecraft:weakness 1 1 true

tag @s remove executor