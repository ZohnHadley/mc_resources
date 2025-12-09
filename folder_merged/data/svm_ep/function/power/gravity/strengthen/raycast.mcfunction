

execute if entity @n[type=!#svm_ep:technical,tag=!executor,dx=0] run scoreboard players set @s svm_ep.p.gravity_strengthen_type 3
execute if entity @n[type=!#svm_ep:technical,tag=!executor,distance=..2] run scoreboard players set @s svm_ep.p.gravity_strengthen_type 3
execute if entity @n[tag=svm_ep.gravity_field,distance=..5] run scoreboard players set @s svm_ep.p.gravity_strengthen_type 1
execute unless entity @s[distance=..100] run scoreboard players set @s svm_ep.p.gravity_strengthen_type 1
execute unless block ^ ^ ^0.55 #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.p.gravity_strengthen_type 2

execute unless entity @s[scores={svm_ep.p.gravity_strengthen_type=1..}] positioned ^ ^ ^0.55 run function svm_ep:power/gravity/strengthen/raycast
