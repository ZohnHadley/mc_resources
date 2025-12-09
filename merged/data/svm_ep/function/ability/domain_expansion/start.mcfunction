tag @s add svm_ep.domain_expansion
tag @s add svm_ep.domain_expansion_part
function svm_ep:system/dimension/save

scoreboard players set @s svm_ep.projectile 1000
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players operation @s svm_ep.domain_expansion_type = @n[tag=executor] svm_ep.domain_expansion_type
scoreboard players operation @s svm_ep.domain_expansion_length = @n[tag=executor] svm_ep.domain_expansion_length
scoreboard players operation @s svm_ep.domain_expansion_length += %WORLD svm_ep.tick

#tellraw @a ["",{"text":"W"},{"score":{"name":"@s","objective":"svm_ep.domain_expansion_length"}}]

scoreboard players set %CURRENT_BARRIER svm_ep.numbers 0

function svm_ep:ability/domain_expansion/setup

execute at @e[tag=svm_ep.domain_expansion_barrier_not_displayed,distance=..25] positioned ^ ^ ^3.5 run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 minecraft:structure_block{name:"svm_ep:do_not_name_structures_that_120310"} replace minecraft:barrier
execute at @e[tag=svm_ep.domain_expansion_barrier_not_displayed,distance=..25] positioned ^ ^ ^3.5 run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 minecraft:barrier replace air
