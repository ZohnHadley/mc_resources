scoreboard players remove @s svm_ep.raycast_length 1

execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1
execute unless block ^ ^ ^0.25 #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.raycast_length -1
execute if entity @e[type=!#svm_ep:technical,tag=!executor,distance=..0.5] run scoreboard players set @s svm_ep.raycast_length -2
execute if entity @e[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.raycast_length -2

execute if block ~ ~ ~ water run scoreboard players set @s svm_ep.raycast_length -3

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.25 run return run function svm_ep:power/water/manipulation/default/raycast

execute if block ^ ^ ^0.25 #minecraft:ice run return run scoreboard players set @s svm_ep.p.water_manipulation_state 8

execute unless entity @s[scores={svm_ep.raycast_length=-3}] if entity @e[tag=svm_ep.water_droplet] run return run scoreboard players set @s svm_ep.p.water_manipulation_state 1
execute unless entity @s[scores={svm_ep.raycast_length=-3}] run return 0
execute if predicate svm_ep:holding_ability if block ~ ~ ~ water[level=0] positioned ~ ~1 ~ if block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ water run scoreboard players set @s svm_ep.raycast_length -4
execute as @s[scores={svm_ep.raycast_length=-4,svm_ep.p.water_manipulation_tick=4..}] run return run function svm_ep:power/water/manipulation/whirlpool/start
execute unless predicate svm_ep:holding_ability run function svm_ep:power/water/manipulation/pick_up/start
