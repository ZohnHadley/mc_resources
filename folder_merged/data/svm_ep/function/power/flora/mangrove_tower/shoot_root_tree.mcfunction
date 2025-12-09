rotate @s 0 0
function svm_ep:system/start_random_rotation_x

scoreboard players remove @s svm_ep.lifetime 9
scoreboard players operation @s svm_ep.lifetime += @n[tag=svm_ep.flora.tree] svm_ep.lifetime
scoreboard players set @s svm_ep.projectile 15
scoreboard players operation @s svm_ep.p.flora_climate = @n[tag=svm_ep.flora.tree] svm_ep.p.flora_climate
tp @s ^ ^ ^0.1
tag @s add svm_ep.mangrove_root