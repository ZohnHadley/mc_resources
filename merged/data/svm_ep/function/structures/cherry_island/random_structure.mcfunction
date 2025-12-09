spreadplayers ~ ~ 1 4 false @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute store result score @s svm_ep.numbers run random value 1..5
execute as @s[scores={svm_ep.numbers=1..5}] at @s run place feature minecraft:forest_rock


function svm_ep:structures/cherry_island/small_dec
kill @s[type=marker]