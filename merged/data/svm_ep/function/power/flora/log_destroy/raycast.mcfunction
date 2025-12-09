execute if block ~ ~ ~ #svm_ep:flora_log_destroy_destroys run tag @s add end_raycast
execute if block ~ ~ ~ #svm_ep:flora_log_destroy_destroys run tag @s add end_raycast1
execute unless entity @s[distance=..10] run tag @s add end_raycast

execute as @s[tag=end_raycast1] run function svm_ep:power/flora/log_destroy/place
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.6 run function svm_ep:power/flora/log_destroy/raycast