scoreboard players add @s svm_ep.lifetime 1
scoreboard players add @a[distance=..15] svm_ep.shaking 1

execute at @s[scores={svm_ep.lifetime=2}] run particle minecraft:explosion ~ ~ ~ 3 0.4 3 0 15
execute at @s[scores={svm_ep.lifetime=2}] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.95

execute store result entity @s Rotation[0] double 1 run random value 0..360
execute at @s summon marker run function svm_ep:power/flora/mangrove_tower/shoot_root
execute store result entity @s Rotation[0] double 1 run random value 0..360
execute at @s summon marker run function svm_ep:power/flora/mangrove_tower/shoot_root
playsound minecraft:entity.player.attack.crit master @a[distance=..30] ~ ~ ~ 1 1.3

execute on vehicle at @s run tp @s ^ ^ ^1

execute at @s as @e[type=!#svm_ep:technical,distance=..5] positioned ~ ~0.5 ~ at @s run tp @s ~ ~1 ~

execute if score @s svm_ep.charge_length < @s svm_ep.lifetime run kill @s
#kill @s[scores={svm_ep.lifetime=35..}]