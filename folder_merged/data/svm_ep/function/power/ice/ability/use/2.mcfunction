execute as @s[type=player,advancements={svm_ep:unlocked_ability/ice/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=1..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.ice_ability_02_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.using_move 150
scoreboard players set @s svm_ep.p.ice_ability_02_delay 20
scoreboard players set @s[type=!player] svm_ep.p.ice_ability_02_delay 80