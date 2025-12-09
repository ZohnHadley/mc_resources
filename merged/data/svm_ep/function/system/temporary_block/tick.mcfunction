execute as @s[tag=!svm_ep.temporary_block_setup] run function svm_ep:system/temporary_block/setup
scoreboard players add @s svm_ep.lifetime 1


execute as @s[scores={svm_ep.lifetime=..1}] run return 0



execute as @s[tag=svm_ep.temporary_block_acacia_leaves] if block ~ ~ ~ acacia_leaves run return run setblock ~ ~ ~ air
execute as @s[tag=svm_ep.temporary_block_barrier] if block ~ ~ ~ barrier run return run setblock ~ ~ ~ air
execute as @s[tag=svm_ep.temporary_block_water] at @s run return run function svm_ep:power/water/temporary/clear



kill @s