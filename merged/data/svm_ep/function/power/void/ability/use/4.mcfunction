execute as @s[type=player,advancements={svm_ep:unlocked_ability/void/4=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=9..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.void_ability_04_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 9
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.using_move 150
scoreboard players set @s svm_ep.p.void_ability_04_delay 120
scoreboard players set @s svm_ep.p.void_step_charge 3
execute at @s if dimension svm_ep:void run function svm_ep:system/dimension/back_to_previous