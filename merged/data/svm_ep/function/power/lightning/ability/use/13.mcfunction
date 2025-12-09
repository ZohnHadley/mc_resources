execute as @s[type=player,advancements={svm_ep:unlocked_ability/lightning/4=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=325..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.lightning_ability_13_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.using_move 900
scoreboard players set @s svm_ep.p.lightning_ability_13_delay 660
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_13_delay *= %thunder_passive_cooldown_multiplier svm_ep.world_settings
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_13_delay /= %thunder_passive_cooldown_divisor svm_ep.world_settings
scoreboard players remove @s svm_ep.mana 325

execute at @s run playsound minecraft:entity.wither.spawn hostile @a[distance=..50] ~ ~1 ~ 2 1.7