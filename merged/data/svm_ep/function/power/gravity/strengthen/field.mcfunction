
execute at @n[tag=svm_ep.gravity_field] run tag @e[tag=!executor,distance=..3,type=!#svm_ep:technical] add svm_ep.in_gravity_field

execute store result score %MANA_DRAIN_FROM_MOBS_IN_FIELD svm_ep.numbers if entity @e[tag=svm_ep.in_gravity_field]
scoreboard players operation %MANA_DRAIN_FROM_MOBS_IN_FIELD svm_ep.numbers *= @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength

scoreboard players operation %MANA_DRAIN_FROM_FIELD_STRENGTH svm_ep.numbers = @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength
scoreboard players operation %MANA_DRAIN_FROM_FIELD_STRENGTH svm_ep.numbers *= @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength
scoreboard players operation %MANA_DRAIN_FROM_FIELD_STRENGTH svm_ep.numbers *= %gravity_field_strengthen_cost_by_strength_multiplier svm_ep.world_settings
scoreboard players operation %MANA_DRAIN_FROM_FIELD_STRENGTH svm_ep.numbers /= %gravity_field_strengthen_cost_by_strength_divisor svm_ep.world_settings

scoreboard players operation @s svm_ep.mana_drain += %MANA_DRAIN_FROM_MOBS_IN_FIELD svm_ep.numbers
scoreboard players operation @s svm_ep.mana_drain += %MANA_DRAIN_FROM_FIELD_STRENGTH svm_ep.numbers

execute unless entity @e[tag=svm_ep.in_gravity_field,distance=..3] run scoreboard players add @n[tag=svm_ep.gravity_field] svm_ep.p.gravity_field_strength 1
execute unless entity @e[tag=svm_ep.in_gravity_field,distance=..3] run scoreboard players remove @n[tag=svm_ep.gravity_field] svm_ep.lifetime 2

execute as @e[tag=svm_ep.in_gravity_field] at @s run function svm_ep:power/gravity/strengthen/crush

tag @e remove svm_ep.in_gravity_field