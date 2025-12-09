execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tag @s add kill
execute at @s if block ~ ~ ~ #minecraft:logs run tag @s remove kill

kill @s[tag=kill]
execute at @s run tp @s ^ ^ ^0.85 ~ ~0.25
execute at @s run tp @s[tag=svm_ep.flora_rooted_bridge_child] ^ ^ ^0.25 ~ ~0.45
execute at @s as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run function svm_ep:power/flora/rooted_bridge/hitby



execute if predicate svm_ep:chance/25_percent at @s positioned ^ ^ ^-.6 run function svm_ep:power/flora/tree_place/place_rooted_dirt
execute if predicate svm_ep:chance/20_percent at @s positioned ^ ^ ^1.3 run function svm_ep:power/flora/tree_place/crown_place_small
execute at @s positioned ~ ~ ~ run function svm_ep:power/flora/tree_place/place_wood
#execute at @s positioned ^ ^ ^0.05 run function svm_ep:power/flora/tree_place/place_wood

execute if predicate svm_ep:chance/60_percent at @s[tag=!svm_ep.flora_rooted_bridge_child] run function svm_ep:power/flora/rooted_bridge/shoot
execute at @s run playsound minecraft:block.rooted_dirt.break master @a[distance=..30] ~ ~ ~ 0.8 0.7

execute at @s run particle minecraft:happy_villager ~ ~.5 ~ 1 1 1 0.3 6