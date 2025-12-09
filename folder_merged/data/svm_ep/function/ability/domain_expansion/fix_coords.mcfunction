#say fixed as:
#execute as @e[tag=svm_ep.fix_coords] run say fixed
execute as @e[tag=svm_ep.domain_expansion_barrier,limit=3,sort=random] at @s positioned ^ ^ ^24 unless entity @e[tag=svm_ep.domain_expansion,distance=..10] run function svm_ep:ability/domain_expansion/end 

execute as @e[tag=svm_ep.fix_coords] store result entity @s Pos[0] double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_x
execute as @e[tag=svm_ep.fix_coords] store result entity @s Pos[1] double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_y
execute as @e[tag=svm_ep.fix_coords] store result entity @s Pos[2] double 0.1 run scoreboard players get @s svm_ep.domain_expansion_pre_z
tag @e remove svm_ep.fix_coords