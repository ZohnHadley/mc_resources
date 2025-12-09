execute as @s[type=player,advancements={svm_ep:unlocked_ability/ice/7=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=40..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.ice_ability_07_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 40
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.p.ice_ability_07_delay 200


scoreboard players set @s svm_ep.p.ice_freeze 1