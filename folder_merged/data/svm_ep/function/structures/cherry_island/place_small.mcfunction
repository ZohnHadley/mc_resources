setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-8,posZ:-8,posY:-5,name:"svm_ep:cherry_island_small",powered:0b,sizeY:41,sizeX:40,sizeZ:40}
setblock ~ ~ ~1 minecraft:redstone_block
execute at @s summon minecraft:marker run function svm_ep:structures/cherry_island/random_structure

kill @s[type=!player]