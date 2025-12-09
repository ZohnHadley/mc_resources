execute unless block ^ ^ ^0.25 #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless block ~ ~-0.5 ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast2
execute unless block ~ ~0.5 ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast2
execute if entity @e[tag=svm_ep.dimension_front_display,distance=..1.5] run tag @s add end_raycast3
tag @s[tag=end_raycast2] add end_raycast
tag @s[tag=end_raycast3] add end_raycast
execute unless entity @s[distance=..120] run tag @s add end_raycast

execute as @s[tag=end_raycast3] run scoreboard players set @e[tag=svm_ep.dimension_front_display,distance=..1.5] svm_ep.lifetime 496
execute as @s[tag=end_raycast2] run function svm_ep:power/dimension_traveler/front/spawn

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.25 run function svm_ep:power/dimension_traveler/front/raycast