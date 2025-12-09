tag @s add svm_ep.click_check
tag @s add svm_ep.time_stop_resistant
data merge entity @s {transformation:{scale:[0f,0f,0f]}}
data merge entity @s {width:1.25,height:1.25}
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id