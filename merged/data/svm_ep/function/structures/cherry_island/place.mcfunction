setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-20,posZ:-23,posY:-32,name:"svm_ep:cherry_island",powered:0b,sizeY:41,sizeX:40,sizeZ:40}
setblock ~ ~ ~1 minecraft:redstone_block
summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.cherry_island_placed"]}
execute positioned ~ ~-40 ~ as @a[distance=..50] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned ~ ~-60 ~ as @a[distance=..50] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned ~ ~-80 ~ as @a[distance=..50] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned ~ ~-100 ~ as @a[distance=..100] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned ~ ~-200 ~ as @a[distance=..100] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned ~ ~-300 ~ as @a[distance=..150] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned ~ ~-400 ~ as @a[distance=..150] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
kill @s[type=!player]