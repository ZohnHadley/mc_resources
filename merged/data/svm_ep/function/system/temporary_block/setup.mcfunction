tag @s add svm_ep.temporary_block_setup
execute store result score @s svm_ep.lifetime run data get entity @s Age
execute store result score @s svm_ep.lifetime run data get entity @s Fire

execute as @s[tag=svm_ep.temporary_block_acacia_leaves] if block ~ ~ ~ #svm_ep:no_physical_hitbox run return run setblock ~ ~ ~ acacia_leaves
execute as @s[tag=svm_ep.temporary_block_barrier] if block ~ ~ ~ #svm_ep:no_physical_hitbox run return run setblock ~ ~ ~ barrier