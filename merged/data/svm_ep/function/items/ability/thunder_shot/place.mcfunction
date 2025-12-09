scoreboard players operation @s svm_ep.lifetime -= @n[tag=end_raycast] svm_ep.thunder_shot_length
scoreboard players operation @s svm_ep.lifetime /= %thunder_shot_windup_divisor svm_ep.world_settings


execute if entity @n[tag=end_raycast,tag=svm_ep.lightning_user] run tag @s add svm_ep.thunder_shot_power_infused
tag @s add svm_ep.thunder_shot
scoreboard players remove @s svm_ep.lifetime 5
scoreboard players set @s svm_ep.projectile 75