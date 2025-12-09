#say start
#execute align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:item_display run item replace entity @s contents with minecraft:grass_block
scoreboard players set %STATE svm_ep.numbers 0
scoreboard players reset %COUNT svm_ep.numbers
tag @e[tag=svm_ep.check_connected_block] add temp.tag.connected_block

execute as @e[tag=svm_ep.check_connected_block] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:system/connected_block/entity
execute if score %COUNT svm_ep.numbers matches 25.. run scoreboard players set %STATE svm_ep.numbers 0
execute if score %STATE svm_ep.numbers matches 0 as @e[tag=temp.tag.connected_block,tag=!svm_ep.check_connected_block] at @s summon item_display run function svm_ep:system/flying_block/type/down/spawn
scoreboard players operation %STATE svm_ep.raycast_length = %STATE svm_ep.numbers
tag @e remove temp.tag.connected_block

#STATE 0 - no connection
#STATE 1.. - found connection