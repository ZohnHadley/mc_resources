scoreboard players operation @s svm_ep.using_move = @s svm_ep.p.time_stop_charge
scoreboard players operation @s svm_ep.using_move *= %time_stop_windup_multiplier svm_ep.world_settings
scoreboard players operation @s svm_ep.using_move /= %time_stop_windup_divisor svm_ep.world_settings
scoreboard players add @s svm_ep.using_move 1895
scoreboard players set @s[scores={svm_ep.using_move=..1902}] svm_ep.using_move 1902
scoreboard players set @s[scores={svm_ep.using_move=1960..}] svm_ep.using_move 1960
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..50] ~ ~1 ~ 0.5 1.5 0.2