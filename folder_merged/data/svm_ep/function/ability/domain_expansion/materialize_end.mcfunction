tag @n[tag=executor] add svm_ep.active

tag @s add svm_ep.domain_expansion_part
tag @s add svm_ep.domain_expansion_inside
scoreboard players set @s svm_ep.projectile 10000

scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players operation @s svm_ep.domain_expansion_type = @n[tag=executor] svm_ep.domain_expansion_type
scoreboard players operation @s svm_ep.domain_expansion_length2 = @n[tag=executor] svm_ep.domain_expansion_length
scoreboard players add @s svm_ep.domain_expansion_length2 40
scoreboard players operation @s svm_ep.domain_expansion_length = @n[tag=executor] svm_ep.domain_expansion_length
scoreboard players operation @s svm_ep.domain_expansion_length -= %WORLD svm_ep.tick
scoreboard players operation @s svm_ep.previous_dimension = @n[tag=executor] svm_ep.previous_dimension

execute if score @s svm_ep.domain_expansion_type matches 1 at @s in svm_ep:domain_expansion/infinite_void run tp @s ~ 100 ~
