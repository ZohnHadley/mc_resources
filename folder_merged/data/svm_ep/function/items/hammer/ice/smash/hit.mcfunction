
execute store result score @s svm_ep.numbers run fill ~-1.6 ~-1.6 ~-1.6 ~1.6 ~2.8 ~1.6 air replace #minecraft:ice
scoreboard players operation @s svm_ep.deal_damage = @s svm_ep.numbers

execute store result score @s[scores={svm_ep.deal_damage=10..}] svm_ep.numbers run fill ~-3 ~-3 ~-3 ~3 ~4 ~3 air replace #minecraft:ice
scoreboard players operation @s svm_ep.deal_damage += @s svm_ep.numbers

execute store result score @s[scores={svm_ep.deal_damage=20..}] svm_ep.numbers run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:ice
scoreboard players operation @s svm_ep.deal_damage += @s svm_ep.numbers


execute at @s run playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 0.4 0
execute as @s[scores={svm_ep.deal_damage=1..}] run particle minecraft:block{block_state:ice} ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute as @s[scores={svm_ep.deal_damage=2..}] run particle minecraft:block{block_state:ice} ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute as @s[scores={svm_ep.deal_damage=4..}] run particle minecraft:block{block_state:ice} ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute as @s[scores={svm_ep.deal_damage=8..}] run particle minecraft:block{block_state:ice} ~ ~0.8 ~ 0.75 1 0.75 0.4 150
execute as @s[scores={svm_ep.deal_damage=12..}] run particle minecraft:block{block_state:ice} ~ ~0.8 ~ 0.75 1 0.75 0.4 150

execute as @s[scores={svm_ep.deal_damage=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.33 0.75
execute as @s[scores={svm_ep.deal_damage=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.33 0.75
execute as @s[scores={svm_ep.deal_damage=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.67 2
execute as @s[scores={svm_ep.deal_damage=10..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.67 1.33
execute as @s[scores={svm_ep.deal_damage=10..}] run playsound minecraft:item.mace.smash_ground master @a[distance=..20] ~ ~ ~ 1.67 1.33
execute as @s[scores={svm_ep.deal_damage=20..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.67 0.66
execute as @s[scores={svm_ep.deal_damage=20..}] run playsound minecraft:item.mace.smash_ground master @a[distance=..20] ~ ~ ~ 1.67 0.66
execute as @s[scores={svm_ep.deal_damage=30..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 2 0
execute as @s[scores={svm_ep.deal_damage=30..}] run playsound minecraft:item.mace.smash_ground master @a[distance=..20] ~ ~ ~ 2 0


scoreboard players operation @s svm_ep.deal_damage *= %ice_breaker_smash_damage_multiplier svm_ep.world_settings
scoreboard players operation @s svm_ep.deal_damage /= %ice_breaker_smash_damage_divisor svm_ep.world_settings
scoreboard players operation @e[distance=..5,type=!#svm_ep:technical] svm_ep.deal_damage = @s svm_ep.deal_damage
execute as @e[distance=..5,type=!#svm_ep:technical,scores={svm_ep.e.freezed=1..}] run function svm_ep:entity/effect/freezed/attacked_by_ice_breaker

scoreboard players reset @s svm_ep.deal_damage
tag @s add executor
execute as @e[distance=..5,type=!#svm_ep:technical,scores={svm_ep.deal_damage=1..}] run function svm_ep:damage/deal_no_mob {"damage":"0","attacker":"@n[tag=executor]","type":"no_cooldown"}
tag @s remove executor

particle minecraft:dust{color:[0.7f,1f,18000000f],scale:2f} ~ ~ ~ 1.4 1.4 1.4 0 10
particle minecraft:gust
