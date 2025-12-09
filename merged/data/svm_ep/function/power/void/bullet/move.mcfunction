execute at @s run tp @s ^ ^ ^0.55 ~ ~
execute at @s as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!svm_ep.void_bullet,tag=!executor,scores={svm_ep.projectile=1..},distance=..1] run tag @s add hitby
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add hit
scoreboard players add @s svm_ep.lifetime 1