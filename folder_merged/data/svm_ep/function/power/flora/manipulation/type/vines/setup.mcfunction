scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data merge entity @s {Tags:["svm_ep.flora_manipulated_block","svm_ep.flora_block_on_cooldown","svm_ep.flora_vine_marker","svm_ep.temporary_marker"],Fire:-300}
execute align xyz run tp @s ~0.5 ~0.5 ~0.5
