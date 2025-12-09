tag @s add attacked_entity
$scoreboard players add @s svm_ep.deal_damage $(damage)

tag @e remove attacker
data modify storage svm_ep:damage input set value {"damage":0}
execute store result storage svm_ep:damage input.damage int 1 run scoreboard players get @s svm_ep.deal_damage
$data modify storage svm_ep:damage input.type set value '$(type)'
function svm_ep:damage/execute_no_mob with storage svm_ep:damage input
tag @s remove attacked_entity
