execute align xyz positioned ~-0.5 ~ ~-0.5 as @e[dx=1,dy=1,dz=1] run tag @s add in_range
execute unless entity @e[tag=in_range] run return run function svm_ep:system/message/no_target
execute align xyz unless function svm_ep:power/flora/manipulation/type/flowers/check run return run tag @e remove in_range
tag @e remove in_range
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.flora_block_on_cooldown","svm_ep.flora_manipulation_cd.flowers","svm_ep.temporary_marker"],Fire:-240}

execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.grass.break master @a[distance=..25] ~ ~ ~ 1.5 1.4 0.75
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:cloud ~ ~.3 ~ 0.1 0.3 0.1 0.15 7