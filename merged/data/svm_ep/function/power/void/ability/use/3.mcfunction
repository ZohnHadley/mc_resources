execute as @s[type=player,advancements={svm_ep:unlocked_ability/void/3=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=10..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.void_ability_03_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

tag @s add executor
execute as @e[tag=svm_ep.void_bullet,tag=!svm_ep.void_manipulated] if score @s svm_ep.entity_id = @a[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute as @e[tag=svm_ep.charging_void,tag=!svm_ep.void_manipulated] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute as @e[tag=svm_ep.black_hole] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute if entity @e[tag=same_id] at @s run function svm_ep:power/void/manipulation/success
tag @e remove same_id
tag @s remove executor