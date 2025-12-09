tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0
playsound minecraft:entity.player.splash.high_speed master @a[distance=..25] ~ ~ ~ 0.4 1.5 0.2
scoreboard players set @s svm_ep.e.wet_splashed 15
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.wet 15
scoreboard players operation @s svm_ep.e.wet += @n[tag=executor] svm_ep.p.water_droplet_size
scoreboard players operation @s svm_ep.e.wet += @n[tag=executor] svm_ep.p.water_droplet_size
scoreboard players operation @s svm_ep.e.wet += @n[tag=executor] svm_ep.p.water_droplet_size
scoreboard players operation @s svm_ep.e.wet += @n[tag=executor] svm_ep.p.water_droplet_size
execute at @s anchored eyes positioned ^ ^ ^0.1 if entity @n[tag=executor,distance=..0.65] run function svm_ep:power/water/droplet/drown
execute at @n[tag=executor] if block ~ ~ ~ water at @s as @e[type=!#svm_ep:technical,scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run damage @n 4 svm_ep:no_cooldown_projectile by @s
execute as @n[tag=executor] at @s run function svm_ep:power/water/droplet/end
