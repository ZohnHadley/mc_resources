scoreboard players add @s svm_ep.mana_drain 150
scoreboard players add @s svm_ep.p.void_black_hole_distance 3
scoreboard players add @s svm_ep.using_move 1
effect give @s minecraft:slowness 1 5 true
execute unless entity @s[scores={svm_ep.mana=2..}] run tag @s add shoot
execute unless predicate svm_ep:holding_ability run tag @s add shoot

scoreboard players operation @s svm_ep.numbers = @s svm_ep.p.void_black_hole_distance
execute at @s anchored eyes positioned ^ ^ ^0.35 positioned ~ ~-0.5 ~ run function svm_ep:power/gravity/field/raycast
scoreboard players add @s svm_ep.used_move 3
scoreboard players add @s svm_ep.p.gravity_ability_01_delay 2
scoreboard players remove @s[scores={svm_ep.selected_ability=5}] svm_ep.using_move 2
execute as @s[scores={svm_ep.using_move=..235}] run function svm_ep:power/gravity/field/blast/start