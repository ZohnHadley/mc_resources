execute as @s[type=player,advancements={svm_ep:unlocked_ability/dimension_traveler/5=false}] run return 0
execute as @s[scores={svm_ep.p.dimension_traveler_ability_05_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute at @s if dimension svm_ep:pocket run tag @s add in
execute as @s[tag=!in] unless entity @s[scores={svm_ep.mana=100..}] run function svm_ep:system/message/not_enough_mana
execute as @s[tag=!in,scores={svm_ep.mana=100..}] run function svm_ep:power/dimension_traveler/hop/start1
execute as @s[tag=in] run function svm_ep:power/dimension_traveler/hop/start2


tag @s remove in
