scoreboard players set @s svm_ep.e.freezed 1
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0
playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 0
particle minecraft:item{item:ice} ~ ~0.8 ~ 0 0 0 0.7 150

scoreboard players operation @s svm_ep.deal_damage *= %ice_breaker_on_freezed_damage_multiplier svm_ep.world_settings
scoreboard players operation @s svm_ep.deal_damage /= %ice_breaker_on_freezed_damage_divisor svm_ep.world_settings
scoreboard players add @s svm_ep.deal_damage 5
