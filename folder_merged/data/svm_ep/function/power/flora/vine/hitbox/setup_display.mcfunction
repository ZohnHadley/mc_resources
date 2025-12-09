data merge entity @s {transformation:{translation:[0f,0.25f,-0.5f],left_rotation:[1,1,1,1.05]}}
item replace entity @s contents from entity @n[tag=svm_ep.flora_vine_motion] contents
execute at @n[tag=executor] anchored eyes positioned ^ ^ ^100 run rotate @s facing ~ ~ ~


tag @s add svm_ep.check_to_recall
tag @s add svm_ep.flora_vine_hitbox_display
ride @n[tag=svm_ep.flora_vine_hitbox,tag=!svm_ep.flora_vine_is_hitbox] mount @s
tp @s ~ ~10000 ~