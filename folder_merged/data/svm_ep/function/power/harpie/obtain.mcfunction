execute at @s run function svm_ep:power/get_power
tag @s add svm_ep.harpie_user
tag @s add svm_ep.power_user
advancement grant @s only svm_ep:storyline/get_harpie

scoreboard players set @s svm_ep.ability0 1
scoreboard players set @s svm_ep.ability1 2
scoreboard players set @s svm_ep.ability2 3
scoreboard players set @s svm_ep.ability3 4
scoreboard players set @s svm_ep.ability4 5
scoreboard players set @s svm_ep.ability5 6

