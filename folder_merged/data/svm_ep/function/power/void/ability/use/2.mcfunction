execute as @s[type=player,advancements={svm_ep:unlocked_ability/void/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=45..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.void_ability_02_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 45
scoreboard players add @s svm_ep.used_move 225
scoreboard players set @s svm_ep.using_move 50
scoreboard players set @s svm_ep.p.void_ability_02_delay 180
execute at @s anchored eyes positioned ^ ^0.2 ^1.75 run function svm_ep:power/void/charging/spawn
