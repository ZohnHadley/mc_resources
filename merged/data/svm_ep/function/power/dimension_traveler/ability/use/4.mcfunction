execute as @s[type=player,advancements={svm_ep:unlocked_ability/dimension_traveler/4=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=30..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.dimension_traveler_ability_04_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute as @s anchored eyes positioned ^ ^ ^0.75 run function svm_ep:power/dimension_traveler/front/raycast

scoreboard players remove @s[tag=end_raycast2] svm_ep.mana 30
scoreboard players set @s[tag=end_raycast2] svm_ep.p.dimension_traveler_ability_04_delay 8
scoreboard players add @s[tag=end_raycast2] svm_ep.used_move 50
tag @s remove end_raycast
tag @s remove end_raycast2
tag @s remove end_raycast3