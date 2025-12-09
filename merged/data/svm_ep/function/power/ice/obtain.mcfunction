execute at @s run function svm_ep:power/get_power
tag @s add svm_ep.ice_user
tag @s add svm_ep.power_user
advancement grant @s only svm_ep:storyline/get_ice

scoreboard players set @s svm_ep.ability0 1
scoreboard players set @s svm_ep.ability1 2
scoreboard players set @s svm_ep.ability2 3
scoreboard players set @s svm_ep.ability3 5
scoreboard players set @s svm_ep.ability4 4
scoreboard players set @s svm_ep.ability5 6
scoreboard players set @s svm_ep.ability6 7

function svm_ep:system/setup_score {from:"%ice_creation_max svm_ep.world_settings",to:"@s svm_ep.p.ice_creation_max"}

