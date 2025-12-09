execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute if entity @e[type=!#svm_ep:technical,dx=0,tag=!executor] run tag @s add end_raycast
execute unless entity @s[distance=..60] run tag @s add end_raycast
execute as @s[tag=end_raycast] run summon minecraft:lightning_bolt
execute as @s[tag=end_raycast] run particle minecraft:glow_squid_ink ~ ~0.7 ~ 0.3 0.3 0.3 3 505
execute as @s[tag=end_raycast] run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.3 0.3 3 505
execute at @s[tag=end_raycast] run playsound minecraft:entity.ender_eye.death ambient @a[distance=..60] ~ ~ ~ 3 1

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.3 run function svm_ep:power/lightning/lightning/raycast