execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add end_raycast
execute unless entity @s[distance=..50] run tag @s add end_raycast

execute as @s[tag=end_raycast] run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.lightning_place","new"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
tag @e remove new
execute as @s[tag=!end_raycast] positioned ^ ^ ^0.6 run function svm_ep:power/lightning/lightning_place/raycast