execute at @s run function svm_ep:power/get_power
tag @s add svm_ep.dimension_traveler_user
tag @s add svm_ep.power_user
advancement grant @s only svm_ep:storyline/get_dimension_traveler


scoreboard players set @s svm_ep.ability0 3
scoreboard players set @s svm_ep.ability1 1
scoreboard players set @s svm_ep.ability2 2
scoreboard players set @s svm_ep.ability3 4
scoreboard players set @s svm_ep.ability4 5
scoreboard players set @s svm_ep.p.dimension_traveler_gate_destination 1
