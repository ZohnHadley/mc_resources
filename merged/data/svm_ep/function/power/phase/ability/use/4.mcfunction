execute as @s[type=player,advancements={svm_ep:unlocked_ability/phase/4=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=50..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.phase_ability_04_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 50
scoreboard players add @s svm_ep.used_move 200
scoreboard players set @s svm_ep.p.phase_awakening_lenght 1200
scoreboard players set @s svm_ep.p.phase_ability_04_delay 1800
execute at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 2
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.85 100