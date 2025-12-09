#execute as @s[type=player,advancements={svm_ep:unlocked_ability/ice/1=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=20..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.ice_ability_01_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 20
scoreboard players add @s svm_ep.used_move 150
scoreboard players set @s svm_ep.using_move 90
scoreboard players set @s svm_ep.p.ice_ability_01_delay 80
scoreboard players set @s[type=!player] svm_ep.p.ice_ability_01_delay 260
