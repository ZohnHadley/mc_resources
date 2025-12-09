scoreboard players add @s svm_ep.mana_drain 350
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.used_move 2
scoreboard players add @s svm_ep.p.gravity_ability_06_delay 3
scoreboard players set @s[scores={svm_ep.p.gravity_ability_06_delay=60..}] svm_ep.p.gravity_ability_06_delay 60

effect give @s minecraft:slowness 1 0 true
execute unless entity @s[scores={svm_ep.mana=4..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute unless entity @e[tag=svm_ep.gravity_field,distance=..10] run scoreboard players reset @s svm_ep.using_move
execute at @s run tp @n[tag=svm_ep.gravity_field,distance=..10] ~ ~0.7 ~
scoreboard players set @n[tag=svm_ep.gravity_field,distance=..10] svm_ep.lifetime 10