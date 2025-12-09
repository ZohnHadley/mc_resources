scoreboard players add @s svm_ep.using_move 1
execute unless predicate svm_ep:holding_ability run return run function svm_ep:power/death/death_compass/end

scoreboard players add @s svm_ep.p.death_ability_06_delay 1

execute at @s run tp @s ~ ~ ~
execute at @s summon marker at @s positioned ~ ~1 ~ run function svm_ep:power/death/death_compass/rotate
effect give @s minecraft:blindness 2 0 true
