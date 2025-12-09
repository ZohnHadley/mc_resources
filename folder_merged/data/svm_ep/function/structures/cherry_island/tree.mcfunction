spreadplayers ~ ~ 1 10 false @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
setblock ~ ~ ~ air
execute at @s run place feature minecraft:cherry
execute at @s if predicate svm_ep:chance/25_percent run place feature minecraft:flower_cherry
execute at @s if predicate svm_ep:chance/25_percent run place feature minecraft:patch_large_fern


kill @s[type=marker]