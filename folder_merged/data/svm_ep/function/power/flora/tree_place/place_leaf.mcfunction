execute as @s[tag=instant] run return run function svm_ep:power/flora/tree_place/place_leaf2
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=svm_ep.flora_oak_leaves,distance=..0.5] run summon marker ~ ~ ~ {Tags:["svm_ep.flora_oak_leaves","svm_ep.no_tick"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run scoreboard players operation @n[tag=svm_ep.flora_oak_leaves,distance=..0.5] svm_ep.p.flora_climate = @s svm_ep.p.flora_climate

