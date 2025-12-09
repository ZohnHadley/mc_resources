execute as @s[scores={svm_ep.lifetime=..3}] run return fail
execute unless entity @p[distance=0..] run return fail
tag @s add svm_ep.active
tp @s ~ ~ ~
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-23,posY:-3,posZ:-23,name:"svm_ep:domain_expansion/infinite_void",powered:0b,sizeY:47,sizeX:47,sizeZ:47}
setblock ~ ~ ~1 minecraft:redstone_block
execute as @e[distance=0..,type=!#svm_ep:technical] if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:entity_properties",entity:"this",predicate:{location:{position:{y:{max:101}}}}}]} at @s run tp @s ~ 100 ~

fillbiome ~24 97 ~24 ~-24 110 ~-24 svm_ep:domain_expansion/infinite_void