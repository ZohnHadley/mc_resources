execute unless entity @s[distance=..15] run tag @s add end_raycast
execute unless block ^ ^ ^0.2 #svm_ep:no_physical_hitbox run tag @s add end_raycast
particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~


execute as @s[tag=end_raycast] run tp @s ^ ^ ^-0.2

data modify entity @e[tag=end,limit=1] Rotation set from entity @s

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.2 run function svm_ep:power/dimension_traveler/quick_portal/raycast