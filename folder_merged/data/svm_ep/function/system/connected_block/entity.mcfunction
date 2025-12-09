#particle end_rod
execute if block ~ ~ ~ #svm_core:no_hitbox run return 0

execute align xyz unless entity @e[tag=temp.tag.connected_block,dx=0] run return run scoreboard players add %STATE svm_ep.numbers 1


execute align xyz as @n[tag=temp.tag.connected_block,tag=!svm_ep.check_connected_block,dx=0] run return 0
execute as @s[tag=svm_ep.check_connected_block] run scoreboard players add %COUNT svm_ep.numbers 1
tag @s remove svm_ep.check_connected_block
execute if score %COUNT svm_ep.numbers matches 25.. run return run function svm_ep:system/connected_block/entity_over_count

execute as @s[distance=0.1..] align xyz as @n[tag=svm_ep.check_connected_block,dx=0] at @s run return run function svm_ep:system/connected_block/entity

execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~ ~ run function svm_ep:system/connected_block/entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~ ~ run function svm_ep:system/connected_block/entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~1 ~ run function svm_ep:system/connected_block/entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ run function svm_ep:system/connected_block/entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~1 run function svm_ep:system/connected_block/entity
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-1 run function svm_ep:system/connected_block/entity
