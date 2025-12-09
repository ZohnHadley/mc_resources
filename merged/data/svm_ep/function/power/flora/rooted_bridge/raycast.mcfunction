execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast1
execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..90] run tag @s add end_raycast

execute as @s[tag=end_raycast1] run function svm_ep:power/flora/rooted_bridge/place
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.6 run function svm_ep:power/flora/rooted_bridge/raycast