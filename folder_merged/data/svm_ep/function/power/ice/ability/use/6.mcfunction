execute as @s[type=player,advancements={svm_ep:unlocked_ability/ice/6=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=35..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.ice_ability_06_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 35
scoreboard players add @s svm_ep.used_move 80
scoreboard players set @s svm_ep.using_move 570
scoreboard players set @s svm_ep.p.ice_ability_06_delay 140