tp @s ^ ^ ^ ~ 20

#scoreboard players add @s svm_ep.p.flora_tree_size 1
scoreboard players operation @s svm_ep.p.flora_tree_size *= %spruce_tree_branch_multiplicator svm_ep.world_settings
scoreboard players operation @s svm_ep.p.flora_tree_size /= %spruce_tree_branch_divisor svm_ep.world_settings
