scoreboard players operation @s svm_ep.using_move = @s svm_ep.p.time_stop_charge
scoreboard players operation @s svm_ep.using_move *= %time_stop_windup_multiplier svm_ep.world_settings
scoreboard players operation @s svm_ep.using_move /= %time_stop_windup_divisor svm_ep.world_settings
scoreboard players add @s svm_ep.using_move 695
scoreboard players set @s[scores={svm_ep.using_move=..702}] svm_ep.using_move 702
scoreboard players set @s[scores={svm_ep.using_move=760..}] svm_ep.using_move 760
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..50] ~ ~1 ~ 0.5 1.5 0.2