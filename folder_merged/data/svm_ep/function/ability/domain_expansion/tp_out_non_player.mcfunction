tag @s add svm_ep.fix_coords
execute at @s run function svm_ep:system/dimension/back_to_previous

execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_x
execute store result entity @s Pos[1] double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_y
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_z

schedule function svm_ep:ability/domain_expansion/fix_coords 10t replace

#data modify storage svm_ep:chain_rot pos[0] set from entity @s Pos
#execute at @s summon minecraft:acacia_boat run data modify storage svm_ep:chain_rot pos2 set from entity @s Pos
#execute at @s if dimension svm_ep:domain_expansion/infinite_void run say gowno
#data modify storage svm_ep:chain_rot pos[1] set from entity @s Pos
