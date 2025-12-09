scoreboard players set @s svm_ep.projectile 1
scoreboard players set @s svm_ep.projectile_type 2
tag @s add svm_ep.flora_manipulation.leaves
rotate @s facing ^ ^ ^1
tp @s ^ ^ ^1
scoreboard players set @s svm_ep.p.flora_manipulation_type 0
execute if block ~ ~ ~ minecraft:spruce_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 1
execute if block ~ ~ ~ minecraft:birch_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 2
execute if block ~ ~ ~ minecraft:jungle_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 3
execute if block ~ ~ ~ minecraft:acacia_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 4
execute if block ~ ~ ~ minecraft:dark_oak_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 5
execute if block ~ ~ ~ minecraft:mangrove_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 6
execute if block ~ ~ ~ minecraft:cherry_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 7
execute if block ~ ~ ~ minecraft:pale_oak_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 8
execute if block ~ ~ ~ minecraft:azalea_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 9
execute if block ~ ~ ~ minecraft:flowering_azalea_leaves run scoreboard players set @s svm_ep.p.flora_manipulation_type 10
