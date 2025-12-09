tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[type=!#svm_ep:technical,scores={svm_ep.entity_id=1..},distance=..100] if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run tag @s add same_id

execute at @s as @s[tag=svm_ep.void_manipulated] run function svm_ep:power/void/bullet/move
execute at @s as @s[tag=svm_ep.void_manipulated] run function svm_ep:power/void/bullet/move
execute at @s as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!svm_ep.void_bullet,scores={svm_ep.projectile=1..},distance=..1] run tag @s add hitby
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
tag @s[scores={svm_ep.lifetime=240..}] add hit
execute at @s as @e[distance=..25,tag=hitby] run function svm_ep:power/void/bullet/hitby 
execute at @s as @s[tag=hit] run function svm_ep:power/void/bullet/hit
execute at @s run function svm_ep:power/void/particle
tag @s remove executor
tag @a remove same_id
