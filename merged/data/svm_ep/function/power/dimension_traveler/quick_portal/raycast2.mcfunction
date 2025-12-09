execute if entity @e[tag=!svm_ep.dimension_portal_hitbox,tag=!executor,dx=2.5,type=!#svm_ep:technical] run tag @s add end_raycast
execute unless entity @s[distance=..13] run tag @s add end_raycast
execute unless block ^ ^ ^0.2 #svm_ep:no_physical_hitbox run tag @s add end_raycast

execute as @s[tag=end_raycast] positioned ^ ^ ^-0.15 run function svm_ep:power/dimension_traveler/quick_portal/spawn_punch_portal

data modify entity @e[tag=end,limit=1] Rotation set from entity @s
particle minecraft:dust{color:[0.85f,0.35f,1f],scale:0.6f} ~ ~ ~ 0.1 0.1 0.1 0 1

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.15 run function svm_ep:power/dimension_traveler/quick_portal/raycast2