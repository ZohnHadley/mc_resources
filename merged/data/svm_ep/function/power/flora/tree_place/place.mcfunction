summon marker ~ ~ ~ {Tags:["svm_ep.flora_tree","new"]}

execute if predicate svm_ep:chance/67_percent as @n[tag=new] store result score @s svm_ep.p.flora_tree_size run random value 0..3
scoreboard players add @n[tag=new] svm_ep.p.flora_tree_size1 2

execute as @n[tag=new] run function svm_ep:system/start_random_rotation_x
execute if biome ~ ~ ~ #svm_ep:has_wood/spruce run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 1
execute if biome ~ ~ ~ #svm_ep:has_wood/birch run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 2
execute if biome ~ ~ ~ #svm_ep:has_wood/jungle run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 3
execute if biome ~ ~ ~ #svm_ep:has_wood/acacia run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 4
execute if biome ~ ~ ~ #svm_ep:has_wood/dark_oak run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 5
execute if biome ~ ~ ~ #svm_ep:has_wood/mangrove run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 6
execute if biome ~ ~ ~ #svm_ep:has_wood/cherry run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 7
execute if biome ~ ~ ~ #svm_ep:has_wood/crimson run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 8
execute if biome ~ ~ ~ #svm_ep:has_wood/warped run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 9
execute if biome ~ ~ ~ #svm_ep:has_wood/azalea run scoreboard players set @n[tag=new] svm_ep.p.flora_climate 10


tag @n[tag=new] remove new