scoreboard players set @s svm_ep.effect 1

scoreboard players operation @s svm_ep.e.petals_of_peace = @n[tag=executor] svm_ep.charge_length
scoreboard players operation @s svm_ep.e.petals_of_peace *= %petals_of_peace_length_multiplier_per_tick svm_ep.world_settings
scoreboard players add @s svm_ep.e.petals_of_peace 15

execute at @s run place feature minecraft:flower_cherry
execute at @s run particle minecraft:cherry_leaves ~ ~1 ~ 2 2 2 0.3 50
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a[distance=..25] ~ ~ ~ 0.6 0.2
execute at @s run playsound minecraft:entity.allay.item_taken master @a[distance=..25] ~ ~ ~ 0.5 2

