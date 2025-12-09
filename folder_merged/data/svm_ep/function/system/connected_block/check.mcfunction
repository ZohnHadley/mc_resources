
execute unless entity @p[distance=..25] run return 0
execute if block ~ ~ ~ #svm_core:no_hitbox run return 1
execute align xyz unless entity @e[scores={svm_ep.connected_block_state=0..},dx=0] align xyz positioned ^ ^ ^-1 if entity @e[scores={svm_ep.connected_block_state=2},dx=0] run return 2

scoreboard players add %CHECKS svm_ep.raycast_length 1

#CHECKED BY MARKED WHILE ALREADY MARKED
execute align xyz if entity @e[scores={svm_ep.connected_block_state=1},dx=0] positioned ^ ^ ^-1 align xyz if entity @e[scores={svm_ep.connected_block_state=1},dx=0] run return 3
#BASIC MARKING OF CHECKED
execute align xyz run scoreboard players set @e[dx=0,scores={svm_ep.connected_block_state=0}] svm_ep.connected_block_state 1

#THERE
execute align xyz if entity @e[scores={svm_ep.connected_block_state=2},dx=0] positioned ^ ^ ^-1 align xyz if entity @e[scores={svm_ep.connected_block_state=2},dx=0] run return 4
#BASIC MARKING OF CHECKED
execute align xyz positioned ^ ^ ^-1 if entity @e[scores={svm_ep.connected_block_state=2},dx=0] positioned ^ ^ ^1 run scoreboard players set @e[dx=0,scores={svm_ep.connected_block_state=0..}] svm_ep.connected_block_state 2

#FOUND CONNECTION
execute align xyz unless entity @e[scores={svm_ep.connected_block_state=0..},dx=0] positioned ^ ^ ^-1 align xyz run scoreboard players set @e[dx=0,scores={svm_ep.connected_block_state=0..}] svm_ep.connected_block_state 2


execute rotated 0 -90 positioned ^ ^ ^1 run function svm_ep:system/connected_block/check

execute rotated 0 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/check
execute rotated 90 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/check
execute rotated 180 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/check
execute rotated 270 0 positioned ^ ^ ^1 run function svm_ep:system/connected_block/check

execute rotated 0 90 positioned ^ ^ ^1 run function svm_ep:system/connected_block/check