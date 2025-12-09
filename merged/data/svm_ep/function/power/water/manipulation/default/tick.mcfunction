#execute if predicate svm_ep:holding_ability as @s[scores={svm_ep.p.water_manipulation_tick=..2}] run return run function svm_ep:power/water/manipulation/holding_start

scoreboard players set @s svm_ep.raycast_length 80
tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^0.1 run function svm_ep:power/water/manipulation/default/raycast
tag @s remove executor