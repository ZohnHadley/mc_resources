tag @s add executor

execute if predicate svm_ep:chance/25_percent on target at @s as @e[tag=executor] unless score @s svm_ep.p.phase_ability_06_delay matches 1.. if entity @s[distance=3..7.5] run function svm_ep:power/phase/ability/use/6
effect give @s minecraft:invisibility infinite 0 true

tag @s remove executor