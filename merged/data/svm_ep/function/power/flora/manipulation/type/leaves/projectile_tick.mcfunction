scoreboard players add @s svm_ep.lifetime 1
execute unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}},{condition:"minecraft:random_chance",chance:0.6}] run function svm_ep:power/flora/manipulation/type/leaves/display
execute if entity @p[distance=..15] run playsound minecraft:block.leaf_litter.step block @a[distance=..15] ~ ~ ~ 0.2 1.1 0.25
execute at @s run tp @s ^ ^ ^0.55
execute as @s[scores={svm_ep.p.flora_manipulation_leaves_speed=10..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ^ ^ ^0.25
execute as @s[scores={svm_ep.p.flora_manipulation_leaves_speed=20..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ^ ^ ^0.25
execute as @s[scores={svm_ep.p.flora_manipulation_leaves_speed=30..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ^ ^ ^0.25
execute at @s unless block ~ ~ ~ #svm_core:no_hitbox unless block ~ ~ ~ #svm_ep:flora_manipulation/leaves run scoreboard players set @s svm_ep.lifetime 50
kill @s[scores={svm_ep.lifetime=50..}]
execute at @s[scores={svm_ep.lifetime=..49}] positioned ~-1.5 ~-1.5 ~-1.5 unless entity @e[type=!#svm_ep:technical,dx=2,dy=2,dz=2] run return 0
function svm_ep:power/flora/manipulation/type/leaves/hit
scoreboard players add @s svm_ep.lifetime 15
execute if predicate svm_ep:chance/25_percent run place feature minecraft:patch_leaf_litter
playsound minecraft:block.leaf_litter.step block @a[distance=..25] ~ ~ ~ 0.6 0.7 0.25
