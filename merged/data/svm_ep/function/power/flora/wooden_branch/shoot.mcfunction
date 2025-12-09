tag @s add svm_ep.wooden_branch
execute positioned ~ ~-3 ~ store result score %TEMPORARY svm_ep.numbers run clone ~-4 ~-4 ~-4 ~4 ~4 ~4 to svm_ep:technical 0 0 0 filtered #svm_core:no_hitbox
execute if score %TEMPORARY svm_ep.numbers matches 350.. run tag @s add svm_ep.mid_air
tag @s add instant
scoreboard players set @s svm_ep.projectile 10
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id

data modify entity @s Rotation set from entity @n[tag=executor] Rotation




function svm_ep:power/flora/selection/get_from_biome
function svm_ep:power/flora/selection/get_from_executor
scoreboard players reset %TEMPORARY svm_ep.numbers