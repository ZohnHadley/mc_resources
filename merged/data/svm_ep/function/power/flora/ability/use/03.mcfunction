execute at @s run playsound minecraft:block.sweet_berry_bush.place master @s ~ ~ ~ 1 1.5
function svm_ep:power/flora/selection/use

scoreboard players set @s svm_ep.p.flora_selected_climate_ability 16
scoreboard players operation @s svm_ep.p.flora_selected_climate_ability += @s svm_ep.p.flora_climate