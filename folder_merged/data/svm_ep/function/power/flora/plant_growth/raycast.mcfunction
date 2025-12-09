scoreboard players remove @s svm_ep.raycast_length 1
scoreboard players add %DISTANCE svm_ep.numbers 1
execute unless block ^ ^ ^0.5 #svm_ep:no_physical_hitbox as @s[scores={svm_ep.selected_ability=2..3}] run return run function svm_ep:power/flora/plant_growth/climate_feature
execute if block ~ ~ ~ #svm_ep:plant_growth_interracts run return run function svm_ep:power/flora/plant_growth/identify
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length 0

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.5 run function svm_ep:power/flora/plant_growth/raycast