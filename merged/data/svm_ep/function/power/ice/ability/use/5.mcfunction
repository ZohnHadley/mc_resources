execute as @s[type=player,advancements={svm_ep:unlocked_ability/ice/5=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=15..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.ice_ability_05_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute at @s anchored eyes run function svm_ep:power/ice/launch/raycast
scoreboard players set @s svm_ep.using_move 480
