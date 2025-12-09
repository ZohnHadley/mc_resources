scoreboard players add @s svm_ep.using_move 1
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players set @s svm_ep.p.gravity_ability_03_delay 10

execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move

scoreboard players add @s svm_ep.mana_drain 35

scoreboard players add @s[scores={svm_ep.used_move=..680}] svm_ep.used_move 4

tag @s add executor

scoreboard players add @s svm_ep.lifetime 1
tag @e[type=#svm_ep:technical] remove same_id

execute at @s as @e[tag=svm_ep.gravity_repel_blast,tag=!svm_ep.active,distance=..8] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s anchored eyes positioned ^ ^ ^.85 as @e[tag=same_id,distance=..8] run tp @s ~ ~ ~
tag @s remove executor
tag @e remove same_id
effect give @s minecraft:slowness 1 4 true