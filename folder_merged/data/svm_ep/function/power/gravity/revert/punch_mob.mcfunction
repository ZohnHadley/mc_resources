tag @s add executor
particle minecraft:reverse_portal ~ ~1 ~ 1 1 1 0.3 40
playsound minecraft:block.beacon.deactivate master @a[distance=..25] ~ ~ ~ 1.5 1.5

execute as @e[tag=!executor,type=!#svm_ep:technical,distance=..10] at @s on attacker if entity @s[tag=executor] as @n[tag=!executor,type=!#svm_ep:technical] run function svm_ep:power/gravity/revert/hit_by
scoreboard players reset @s svm_ep.p.gravity_revert
tag @s remove executor
