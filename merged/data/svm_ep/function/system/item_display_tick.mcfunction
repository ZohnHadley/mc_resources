scoreboard players add @s svm_ep.lifetime 1
execute as @s[scores={svm_ep.item_display_type=1}] run function svm_ep:system/flying_block/tick
execute as @s[scores={svm_ep.item_display_type=2}] run function svm_ep:system/fog/tick
execute as @s[scores={svm_ep.item_display_type=3}] run function svm_ep:system/flying_block/type/down/tick
kill @s[scores={svm_ep.lifetime=1..}]
