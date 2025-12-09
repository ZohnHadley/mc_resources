execute at @s run function svm_ep:power/get_power
tag @s add svm_ep.phase_user
tag @s add svm_ep.power_user
advancement grant @s only svm_ep:storyline/get_phase

scoreboard players set @s svm_ep.ability0 7
scoreboard players set @s svm_ep.ability1 8
scoreboard players set @s svm_ep.ability2 9
scoreboard players set @s svm_ep.ability3 4


