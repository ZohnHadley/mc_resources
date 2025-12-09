tag @s add svm_ep.dimension_gate_ray
function svm_ep:system/set_random_rotation

scoreboard players operation @s svm_ep.p.dimension_traveler_gate_destination = @e[tag=executor,limit=1] svm_ep.p.dimension_traveler_gate_destination
execute unless entity @s[scores={svm_ep.p.dimension_traveler_gate_destination=1..}] run scoreboard players set @s svm_ep.p.dimension_traveler_gate_destination 1
execute if predicate svm_ep:chance/33_percent run scoreboard players remove @s svm_ep.lifetime 3
execute if predicate svm_ep:chance/33_percent run scoreboard players remove @s svm_ep.lifetime 2
execute if predicate svm_ep:chance/33_percent run scoreboard players remove @s svm_ep.lifetime 1

