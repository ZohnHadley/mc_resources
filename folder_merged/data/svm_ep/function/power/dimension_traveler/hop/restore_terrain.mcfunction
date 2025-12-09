
fill ~5 8 ~5 ~-5 8 ~-5 minecraft:magenta_stained_glass
fill ~5 6 ~5 ~-5 6 ~-5 minecraft:magenta_stained_glass
fill ~5 4 ~5 ~-5 4 ~-5 minecraft:magenta_stained_glass
fill ~5 2 ~5 ~-5 2 ~-5 minecraft:magenta_stained_glass
fill ~5 0 ~5 ~-5 0 ~-5 minecraft:magenta_stained_glass

function svm_ep:system/get_coordinates

execute as @s[scores={pos.y=..8}] positioned over world_surface run tp @s ~ ~ ~