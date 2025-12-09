tp @s ~ ~ ~ ~ -15
execute at @s run tp @s ^ ^ ^0.8
scoreboard players add @s svm_ep.p.flora_tree_size 0
scoreboard players operation @s svm_ep.p.flora_tree_size *= %azalea_tree_branch_multiplicator svm_ep.world_settings
scoreboard players operation @s svm_ep.p.flora_tree_size /= %azalea_tree_branch_divisor svm_ep.world_settings
