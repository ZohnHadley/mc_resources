tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0

scoreboard players set @n[tag=executor] svm_ep.lifetime 4000 
effect give @s minecraft:levitation 10 1
damage @s 5 minecraft:mob_projectile
scoreboard players reset @s svm_ep.p.copy_shulker_bullet_targeted_by