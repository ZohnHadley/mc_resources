tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0

execute at @s as @e[type=!#svm_ep:technical,scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run damage @n 5 svm_ep:no_cooldown_projectile by @s
playsound minecraft:entity.player.splash.high_speed master @a[distance=..25] ~ ~ ~ 0.6 1.2 0.3
scoreboard players set @s svm_ep.e.wet_splashed 20
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.wet 30
particle minecraft:splash ~ ~ ~ 1.5 1.5 1.5 0.1 40
execute as @n[tag=executor] at @s run function svm_ep:power/water/manipulation/pick_up/end

