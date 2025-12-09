#execute align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run item replace entity @s contents with redstone_block
tag @s remove svm_ep.check_connected_block
execute at @s as @e[distance=..1,tag=svm_ep.check_connected_block] run function svm_ep:system/connected_block/entity_over_count
