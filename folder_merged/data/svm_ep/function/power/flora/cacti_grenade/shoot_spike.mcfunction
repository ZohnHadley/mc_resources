
tag @s add svm_ep.cacti_grenade_spike
scoreboard players operation @s svm_ep.entity_id = @n[tag=same_id,tag=svm_ep.flora_user] svm_ep.entity_id
execute at @s run function svm_ep:system/set_random_rotation
execute at @s unless block ^ ^ ^0.5 #svm_ep:no_physical_hitbox run function svm_ep:system/set_random_rotation
execute at @s unless block ^ ^ ^0.5 #svm_ep:no_physical_hitbox run function svm_ep:system/set_random_rotation
execute at @s unless block ^ ^ ^0.5 #svm_ep:no_physical_hitbox run function svm_ep:system/set_random_rotation

scoreboard players set @s svm_ep.projectile 1

tag @n[tag=new] remove new