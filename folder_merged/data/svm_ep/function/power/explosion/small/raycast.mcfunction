execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..2.5] run tag @s add end_raycast

execute as @s[tag=end_raycast] run function svm_ep:power/explosion/small/explode
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.1 run function svm_ep:power/explosion/small/raycast
tag @s remove end_raycast