tp @s ~ ~ ~ ~ -5
execute at @s run tp @s ^ ^ ^0.8
#scoreboard players operation @s svm_ep.p.flora_tree_size = @s svm_ep.lifetime
scoreboard players add @s svm_ep.p.flora_tree_size 1
scoreboard players operation @s svm_ep.p.flora_tree_size *= %birch_tree_branch_multiplicator svm_ep.world_settings
scoreboard players operation @s svm_ep.p.flora_tree_size /= %birch_tree_branch_divisor svm_ep.world_settings
scoreboard players add @s svm_ep.p.flora_tree_size 1
