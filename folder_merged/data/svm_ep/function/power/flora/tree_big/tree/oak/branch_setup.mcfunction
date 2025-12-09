tp @s ~ ~ ~ ~ -45
execute at @s run tp @s ^ ^ ^0.8
scoreboard players add @s svm_ep.p.flora_tree_size 2
scoreboard players operation @s svm_ep.p.flora_tree_size *= %oak_tree_branch_multiplicator svm_ep.world_settings
scoreboard players operation @s svm_ep.p.flora_tree_size /= %oak_tree_branch_divisor svm_ep.world_settings
