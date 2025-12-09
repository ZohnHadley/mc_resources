execute if entity @n[tag=domain_inside,scores={svm_ep.lifetime=..50}] rotated as @s at @n[tag=domain_inside] positioned ~ ~1 ~ summon item_display run function svm_ep:ability/domain_expansion/type/infinite_void/setup_zoom_particle
execute if entity @n[tag=domain_inside,scores={svm_ep.lifetime=25..50}] rotated as @s at @n[tag=domain_inside] positioned ~ ~1 ~ summon item_display run function svm_ep:ability/domain_expansion/type/infinite_void/setup_zoom_particle
execute if entity @n[tag=domain_inside,scores={svm_ep.lifetime=35..50}] rotated as @s at @n[tag=domain_inside] positioned ~ ~1 ~ summon item_display run function svm_ep:ability/domain_expansion/type/infinite_void/setup_zoom_particle

#execute if entity @n[tag=domain_inside,scores={svm_ep.lifetime=40..}] at @s run effect give @e[distance=0.1..45] minecraft:levitation 1 0 true
tag @s add castor
execute at @s as @e[type=!#svm_ep:technical,distance=..30,tag=!castor] run scoreboard players set @s svm_ep.effect 1
execute at @s as @e[type=!#svm_ep:technical,distance=..30,tag=!castor] run scoreboard players add @s svm_ep.e.infinite_void 1
execute at @s as @e[type=!#svm_ep:technical,distance=..10,tag=!castor] run scoreboard players add @s svm_ep.e.infinite_void 1
tag @s remove castor
