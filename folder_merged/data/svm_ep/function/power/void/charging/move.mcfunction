execute at @s run tp @s ^ ^ ^0.35 ~ ~
execute at @s as @e[tag=!same_id,dx=0,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..0.5,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!svm_ep.void_bullet,tag=!executor,scores={svm_ep.projectile=1..},distance=..2] run tag @s add hitby

execute at @s positioned ~ ~ ~ run function svm_ep:erase_block
scoreboard players add @s svm_ep.lifetime 3