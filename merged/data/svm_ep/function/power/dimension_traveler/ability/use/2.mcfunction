execute as @s[type=player,advancements={svm_ep:unlocked_ability/dimension_traveler/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=50..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.dimension_traveler_ability_02_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.p.dimension_traveler_ability_02_delay 400
#function svm_ep:power/dimension_traveler/gate/right
scoreboard players set @s svm_ep.using_move 150
scoreboard players add @s svm_ep.used_move 450
scoreboard players remove @s svm_ep.mana 50
