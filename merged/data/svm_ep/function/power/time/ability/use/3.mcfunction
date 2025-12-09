execute as @s[type=player,advancements={svm_ep:unlocked_ability/time/3=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.time_ability_03_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

#SKIP
scoreboard players set @s svm_ep.using_move 300
scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 25
scoreboard players set @s svm_ep.p.time_ability_03_delay 120

execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..30] ~ ~ ~ 0.85 2
