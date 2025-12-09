scoreboard players set @s svm_ep.numbers 0

execute store result score @s svm_ep.numbers run fill ~2.4 ~2.4 ~2.4 ~-2.4 ~-2.4 ~-2.4 minecraft:frosted_ice[age=0] replace water[level=0]


scoreboard players operation @s svm_ep.numbers *= %ice_creation_freeze_water_cost_multiplier svm_ep.world_settings
scoreboard players operation @s svm_ep.numbers /= %ice_creation_freeze_water_cost_divisor svm_ep.world_settings
scoreboard players operation @s svm_ep.mana -= @s svm_ep.numbers
execute as @s[scores={svm_ep.numbers=1..}] run playsound minecraft:entity.player.hurt_freeze master @a[distance=..25] ~ ~ ~ 1 0.6