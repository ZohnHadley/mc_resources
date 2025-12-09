#execute if block ~ ~ ~ #svm_ep:indestructable run tag @s add end_raycast

execute if predicate svm_ep:chance/33_percent run particle minecraft:sweep_attack ~ ~ ~ 0.3 0.3 0.3 0 1
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 3.4 1
particle minecraft:end_rod ~ ~-0.2 ~ 0.3 0.02 0.3 0.01 1
#execute summon minecraft:item_display at @s run function svm_ep:power/flora/bush/summon_display2
execute positioned ^ ^ ^ run function svm_ep:erase_block
execute positioned ^0.4 ^ ^ run function svm_ep:erase_block
execute positioned ^-0.4 ^ ^ run function svm_ep:erase_block
execute positioned ^ ^-0.4 ^ run function svm_ep:erase_block
execute positioned ^0.4 ^-0.4 ^ run function svm_ep:erase_block
execute positioned ^-0.4 ^-0.4 ^ run function svm_ep:erase_block
kill @e[type=#minecraft:impact_projectiles,distance=..3.5]
execute unless entity @s[distance=..8] run tag @s add end_raycast
execute as @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run damage @s 8 minecraft:player_attack by @e[tag=same_id,limit=1]
#execute as @e[tag=!same_id,type=!#svm_ep:technical,distance=..3] run damage @s 0.1 svm_ep:bypass_cooldown by @e[tag=same_id,limit=1]
execute positioned ^ ^ ^1.1 as @s[tag=!end_raycast] run function svm_ep:items/katana/mountain_cut/raycast