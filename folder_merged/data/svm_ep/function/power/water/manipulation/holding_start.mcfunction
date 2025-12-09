execute as @s[scores={svm_ep.p.water_manipulation_tick=..1}] run return 0
execute if entity @e[tag=svm_ep.water_droplet,distance=..85] run scoreboard players set @s svm_ep.p.water_manipulation_state 1
execute if entity @e[tag=svm_ep.water_launch,distance=..50] run scoreboard players set @s svm_ep.p.water_manipulation_state 7
