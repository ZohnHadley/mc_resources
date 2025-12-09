execute store result score @s svm_ep.domain_expansion_pre_x run data get entity @s Pos[0] 10
execute store result score @s svm_ep.domain_expansion_pre_y run data get entity @s Pos[1] 10
execute store result score @s svm_ep.domain_expansion_pre_z run data get entity @s Pos[2] 10

scoreboard players operation @s svm_ep.domain_expansion_inside = @n[tag=executor] svm_ep.domain_expansion_length
tag @s add svm_ep.in_domain
function svm_ep:system/dimension/save

execute if score %DOMAIN_TYPE svm_ep.numbers matches 1 run function svm_ep:ability/domain_expansion/type/infinite_void/tp_inside