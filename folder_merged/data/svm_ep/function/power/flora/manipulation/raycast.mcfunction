scoreboard players remove @s svm_ep.raycast_length 1
scoreboard players add %total svm_ep.raycast_length 1

execute unless block ~ ~ ~ #svm_core:no_hitbox align xyz positioned ~ ~ ~ unless entity @e[tag=svm_ep.flora_manipulated_block,dx=0] run scoreboard players set @s svm_ep.raycast_length -2
execute if block ~ ~ ~ #svm_ep:flora_manipulation/any align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/flora/manipulation/attempt
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.raycast_length -3

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.33 run return run function svm_ep:power/flora/manipulation/raycast


#execute as @s[scores={svm_ep.p.flora_manipulation_tick=3..}] run function svm_ep:power/flora/manipulation/type/vines

execute unless entity @s[scores={svm_ep.p.flora_manipulation_type=3}] if entity @e[tag=svm_ep.flora_leaves_marker,distance=..50] run scoreboard players set @s svm_ep.p.flora_manipulation_type 30
execute unless entity @s[scores={svm_ep.p.flora_manipulation_type=6}] if entity @e[tag=svm_ep.flora_vine_marker,distance=..50] run scoreboard players set @s svm_ep.p.flora_manipulation_type 60
execute unless entity @s[scores={svm_ep.p.flora_manipulation_type=7}] if entity @e[tag=svm_ep.flora_wood_marker,distance=..50] run scoreboard players set @s svm_ep.p.flora_manipulation_type 70
execute unless entity @s[scores={svm_ep.p.flora_manipulation_type=8}] if entity @e[tag=svm_ep.cacti_grenade,distance=..50] run scoreboard players set @s svm_ep.p.flora_manipulation_type 80


#particle end_rod ^ ^ ^-0.33 0 0 0 0 1 force @s

scoreboard players add @s[scores={svm_ep.raycast_length=0}] svm_ep.p.flora_harvest_max_length_prev 2
execute as @s[scores={svm_ep.p.flora_manipulation_type=30,svm_ep.p.flora_manipulation_tick=1..}] run function svm_ep:power/flora/manipulation/type/leaves/tick
execute as @s[scores={svm_ep.p.flora_manipulation_type=60,svm_ep.p.flora_manipulation_tick=1..}] run function svm_ep:power/flora/manipulation/type/vines/tick
execute as @s[scores={svm_ep.p.flora_manipulation_type=70,svm_ep.p.flora_manipulation_tick=1..}] run function svm_ep:power/flora/manipulation/type/wood/tick
execute as @s[scores={svm_ep.p.flora_manipulation_type=80,svm_ep.p.flora_manipulation_tick=1..}] run function svm_ep:power/flora/manipulation/type/cactus/tick

#execute as @s[scores={svm_ep.raycast_length=0}] run particle minecraft:flash{color:0xffffffff} ~ ~ ~ 0 0 0 0 1 force @s
#execute as @s[scores={svm_ep.raycast_length=-1}] as @e[distance=..2.5,type=item,nbt={Age:0s}] run function svm_ep:power/flora/manipulation/pick_up