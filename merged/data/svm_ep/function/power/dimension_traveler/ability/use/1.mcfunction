#execute as @s[type=player,advancements={svm_ep:unlocked_ability/dimension_traveler/1=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=20..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.dimension_traveler_ability_01_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute anchored eyes positioned ^ ^ ^1.5 run function svm_ep:power/dimension_traveler/quick_portal/spawn
scoreboard players set @s svm_ep.p.dimension_traveler_ability_01_delay 60
scoreboard players set @s svm_ep.using_move 100
scoreboard players add @s svm_ep.used_move 50
scoreboard players remove @s svm_ep.mana 20
