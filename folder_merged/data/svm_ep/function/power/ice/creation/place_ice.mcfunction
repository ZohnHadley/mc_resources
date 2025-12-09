execute if score @s svm_ep.p.ice_created > @s svm_ep.p.ice_created_max run return 0
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute as @s[scores={svm_ep.mana=..0}] run return 0

execute if block ~1 ~ ~ #svm_ep:no_physical_hitbox if block ~-1 ~ ~ #svm_ep:no_physical_hitbox if block ~ ~1 ~ #svm_ep:no_physical_hitbox if block ~ ~-1 ~ #svm_ep:no_physical_hitbox if block ~ ~ ~1 #svm_ep:no_physical_hitbox if block ~ ~ ~-1 #svm_ep:no_physical_hitbox run return fail

playsound minecraft:block.glass.break master @a[distance=..6.5] ~ ~ ~ 0.2 1.25
scoreboard players add @s svm_ep.used_move 1
scoreboard players add @s svm_ep.p.ice_created 1
setblock ~ ~ ~ ice
execute align xyz run particle minecraft:snowflake ~0.5 ~0.5 ~0.5 0.36 0.36 0.36 0.05 3
execute align xyz run particle minecraft:dust{color:[0.65f,0.8f,1f],scale:2} ~0.5 ~0.5 ~0.5 0.4 0.4 0.4 0.05 3

scoreboard players add @s svm_ep.mana_drain 15
