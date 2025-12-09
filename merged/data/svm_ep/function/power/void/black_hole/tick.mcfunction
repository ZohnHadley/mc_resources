scoreboard players add @s svm_ep.mana_drain 251
scoreboard players add @s svm_ep.p.void_black_hole_distance 2
scoreboard players add @s svm_ep.using_move 1
effect give @s minecraft:slowness 1 5 true
execute unless entity @s[scores={svm_ep.mana=2..}] run tag @s add shoot
execute unless predicate svm_ep:holding_ability run tag @s add shoot

scoreboard players operation @s svm_ep.numbers = @s svm_ep.p.void_black_hole_distance
execute at @s anchored feet positioned ^ ^ ^0.35 positioned ~ ~0.5 ~ run function svm_ep:power/void/black_hole/raycast
scoreboard players add @s svm_ep.used_move 5
scoreboard players add @s svm_ep.p.void_ability_05_delay 3
execute if dimension svm_ep:void run scoreboard players reset @s svm_ep.using_move
