execute as @s[type=player,advancements={svm_ep:unlocked_ability/void/5=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=250..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.void_ability_05_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.using_move 250
scoreboard players remove @s svm_ep.mana 250
scoreboard players add @s svm_ep.used_move 800
scoreboard players set @s svm_ep.p.void_ability_05_delay 4000