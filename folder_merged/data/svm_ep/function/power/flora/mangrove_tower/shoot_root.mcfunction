scoreboard players remove @s svm_ep.lifetime 5
scoreboard players set @s svm_ep.projectile 15
tp @s @n[tag=svm_ep.mangrove_tower]
scoreboard players operation @s svm_ep.p.flora_climate = @n[tag=svm_ep.mangrove_tower] svm_ep.p.flora_climate
tp @s ^ ^ ^0.1
tag @s add svm_ep.mangrove_root