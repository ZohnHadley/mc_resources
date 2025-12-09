execute at @s as @e[type=item,nbt={Age:1s},distance=..35] run function svm_ep:power/flora/log_destroy/check_item
scoreboard players add @s svm_ep.lifetime 1
kill @s[scores={svm_ep.p.flora_destroyed_logs=0..}]
kill @s[scores={svm_ep.lifetime=5..}]