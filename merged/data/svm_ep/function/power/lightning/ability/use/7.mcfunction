execute as @s[type=player,advancements={svm_ep:unlocked_ability/lightning/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=20..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.lightning_ability_07_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.p.lightning_ability_07_delay 40
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_07_delay *= %thunder_passive_cooldown_multiplier svm_ep.world_settings
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_07_delay /= %thunder_passive_cooldown_divisor svm_ep.world_settings
scoreboard players set @s svm_ep.p.lightning_string_charge 2
scoreboard players set @s[tag=svm_ep.npc] svm_ep.p.lightning_string_charge 6
scoreboard players set @s[tag=svm_ep.npc_thunder_god] svm_ep.p.lightning_ability_07_delay 200
scoreboard players set @s[tag=svm_ep.npc,scores={health=250..}] svm_ep.p.lightning_ability_07_delay 100

execute store result score @s[tag=svm_ep.npc] svm_ep.numbers run random value 1..3

execute at @s[tag=svm_ep.npc_thunder_god,scores={svm_ep.numbers=1}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"I hope you're ready!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc_thunder_god,scores={svm_ep.numbers=2}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Haha!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc_thunder_god,scores={svm_ep.numbers=3}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Watch out weakling!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc_thunder_god] run playsound minecraft:entity.evoker.ambient hostile @a[distance=..20] ~ ~1 ~ 4 0.7

scoreboard players add @s svm_ep.used_move 120
scoreboard players remove @s svm_ep.mana 20
scoreboard players set @s svm_ep.using_move 1250