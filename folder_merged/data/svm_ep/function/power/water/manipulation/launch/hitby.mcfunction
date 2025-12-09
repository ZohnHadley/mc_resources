tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0
execute at @s as @e[type=!#svm_ep:technical,scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run damage @n 4 svm_ep:no_cooldown_projectile by @s

playsound minecraft:entity.player.splash.high_speed master @a[distance=..25] ~ ~ ~ 0.6 0.8 0.3
scoreboard players set @s svm_ep.e.wet_splashed 15
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.wet 15
scoreboard players operation @s svm_ep.e.wet += @n[tag=executor] svm_ep.charge_length
execute at @s anchored eyes positioned ^ ^ ^0.1 if entity @n[tag=executor,distance=..0.65] run function svm_ep:power/water/droplet/drown
execute at @n[tag=executor] positioned ^ ^ ^-1 run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/1":1}}}}}

