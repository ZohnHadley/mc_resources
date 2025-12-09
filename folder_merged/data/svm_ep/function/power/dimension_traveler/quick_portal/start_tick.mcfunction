tag @s add executor
scoreboard players set @s svm_ep.p.dimension_traveler_ability_01_delay 10
execute as @e[tag=svm_ep.dimension_quick_portal_display] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s anchored eyes run tp @e[tag=same_id,limit=1,sort=nearest] ^ ^ ^1.35
effect give @s minecraft:slowness 1 1 true
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
tag @s remove executor
tag @e remove same_id