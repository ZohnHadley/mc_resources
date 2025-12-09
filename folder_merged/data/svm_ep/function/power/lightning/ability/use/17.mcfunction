execute as @s[type=player,advancements={svm_ep:unlocked_ability/lightning/7=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=10..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.lightning_ability_17_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.using_move 1465
scoreboard players add @s svm_ep.used_move 80
scoreboard players set @s svm_ep.p.lightning_ability_17_delay 5
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_17_delay *= %thunder_passive_cooldown_multiplier svm_ep.world_settings
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_17_delay /= %thunder_passive_cooldown_divisor svm_ep.world_settings
scoreboard players remove @s svm_ep.mana 10
execute at @s run particle minecraft:electric_spark ~ ~1 ~ 1 1 1 2.5 100
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..15] ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..15] ~ ~ ~ 1 1.4