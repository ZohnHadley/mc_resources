execute summon item_display run function svm_ep:power/flora/cacti_grenade/w_motion/setup_display

data modify entity @s Item set value {id:"minecraft:cactus"}


#MOTION
execute at @n[tag=executor] anchored eyes positioned ^ ^ ^2 run function svm_ep:power/flora/cacti_grenade/w_motion/motion_strong
