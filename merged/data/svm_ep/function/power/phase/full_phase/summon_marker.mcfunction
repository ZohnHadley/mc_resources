scoreboard players operation @s svm_ep.entity_id = @a[tag=executor,limit=1,sort=nearest] svm_ep.entity_id
data merge entity @s {Tags:["svm_ep.phase_marker","svm_ep.temporary_marker"],Fire:-3}
tp @s @a[tag=executor,limit=1]