execute as @e[distance=..3,type=!#svm_ep:technical,tag=!same_id] run damage @s 1 minecraft:no_cooldown by @n[tag=svm_ep.flora_user,tag=same_id]
execute as @e[distance=..4,type=!#svm_ep:technical,tag=!same_id] run damage @s 1 minecraft:no_cooldown by @n[tag=svm_ep.flora_user,tag=same_id]
execute as @e[distance=..5,type=!#svm_ep:technical,tag=!same_id] run damage @s 1 minecraft:no_cooldown by @n[tag=svm_ep.flora_user,tag=same_id]
execute as @e[distance=..6,type=!#svm_ep:technical,tag=!same_id] run damage @s 1 minecraft:no_cooldown by @n[tag=svm_ep.flora_user,tag=same_id]
execute as @e[distance=..7,type=!#svm_ep:technical,tag=!same_id] run damage @s 3 minecraft:mob_projectile by @n[tag=svm_ep.flora_user,tag=same_id]
particle minecraft:gust
particle minecraft:crit ~ ~ ~ 0 0 0 4 40
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike
execute summon marker run function svm_ep:power/flora/cacti_grenade/shoot_spike

playsound minecraft:block.sweet_berry_bush.break master @a[distance=..30] ~ ~ ~ 1 2
playsound minecraft:block.wet_grass.break master @a[distance=..25] ~ ~ ~ 1.15 0
playsound minecraft:entity.generic.explode master @a[distance=..25] ~ ~ ~ 0.15 1.18

scoreboard players add @a[distance=..15] svm_ep.shaking 8

kill @s