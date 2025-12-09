scoreboard players remove @s svm_ep.raycast_length 1
scoreboard players add %total svm_ep.raycast_length 1

execute if block ~ ~ ~ #svm_ep:flora_harvest/any run function svm_ep:power/flora/harvest/harvestable
execute unless block ~ ~ ~ #svm_core:no_hitbox run scoreboard players set @s svm_ep.raycast_length -2

execute as @s[scores={svm_ep.raycast_length=1..}] positioned ^ ^ ^0.33 run return run function svm_ep:power/flora/harvest/raycast
scoreboard players add @s[scores={svm_ep.raycast_length=0}] svm_ep.p.flora_harvest_max_length_prev 2
execute as @s[scores={svm_ep.raycast_length=0}] run particle minecraft:flash{color:0xffffffff} ~ ~ ~ 0 0 0 0 1 force @s
execute as @s[scores={svm_ep.raycast_length=-1}] as @e[distance=..2.5,type=item,nbt={Age:0s}] run function svm_ep:power/flora/harvest/pick_up