data merge entity @s {CustomName:"Manipulated Leaves",Tags:["svm_ep.flora_manipulated_block","svm_ep.flora_leaves_marker","svm_ep.temporary_marker"],Fire:-100}
#scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
#scoreboard players set @s svm_ep.kill_after_function 1