execute store result score @s svm_ep.rotation run data get entity @s Rotation[1]
scoreboard players add @s svm_ep.rotation 90

execute at @s run tp @s ~ ~ ~ ~180 90
execute at @s run function svm_ep:system/set_random_rotation_y