scoreboard players operation @s svm_ep.p.slime_rain_count = @s svm_ep.level
scoreboard players operation @s svm_ep.p.slime_rain_count /= %extra_slimes_divisor svm_ep.world_settings

scoreboard players add @s svm_ep.p.slime_rain_count 5
execute if score @s svm_ep.p.slime_rain_count >= %slime_rain_cap svm_ep.world_settings run scoreboard players operation @s svm_ep.p.slime_rain_count = %slime_rain_cap svm_ep.world_settings
scoreboard players operation @s svm_ep.mana -= @s svm_ep.p.slime_rain_count

scoreboard players operation @s svm_ep.p.slime_ability_02_delay = @s svm_ep.p.slime_rain_count
scoreboard players operation @s svm_ep.p.slime_ability_02_delay *= %slime_rain_delay_multiplier svm_ep.world_settings
scoreboard players add @s svm_ep.p.slime_ability_02_delay 40
scoreboard players set @s[tag=svm_ep.npc_slime] svm_ep.p.slime_rain_count 10
scoreboard players set @s[tag=svm_ep.npc_slime] svm_ep.p.slime_ability_04_delay 120

scoreboard players set @s svm_ep.using_move 50