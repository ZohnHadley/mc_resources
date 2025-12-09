execute at @s if score @s svm_ep.rotation matches 128.. run tp @s ~ ~ ~ ~ ~-128
execute if score @s svm_ep.rotation matches 128.. run scoreboard players remove @s svm_ep.rotation 128
execute at @s if score @s svm_ep.rotation matches 64.. run tp @s ~ ~ ~ ~ ~-64
execute if score @s svm_ep.rotation matches 64.. run scoreboard players remove @s svm_ep.rotation 64
execute at @s if score @s svm_ep.rotation matches 32.. run tp @s ~ ~ ~ ~ ~-32
execute if score @s svm_ep.rotation matches 32.. run scoreboard players remove @s svm_ep.rotation 32
execute at @s if score @s svm_ep.rotation matches 16.. run tp @s ~ ~ ~ ~ ~-16
execute if score @s svm_ep.rotation matches 16.. run scoreboard players remove @s svm_ep.rotation 16
execute at @s if score @s svm_ep.rotation matches 8.. run tp @s ~ ~ ~ ~ ~-8
execute if score @s svm_ep.rotation matches 8.. run scoreboard players remove @s svm_ep.rotation 8
execute at @s if score @s svm_ep.rotation matches 4.. run tp @s ~ ~ ~ ~ ~-4
execute if score @s svm_ep.rotation matches 4.. run scoreboard players remove @s svm_ep.rotation 4
execute at @s if score @s svm_ep.rotation matches 2.. run tp @s ~ ~ ~ ~ ~-2
execute if score @s svm_ep.rotation matches 2.. run scoreboard players remove @s svm_ep.rotation 2
execute at @s if score @s svm_ep.rotation matches 1.. run tp @s ~ ~ ~ ~ ~-1
execute if score @s svm_ep.rotation matches 1.. run scoreboard players remove @s svm_ep.rotation 1
execute if score @s svm_ep.rotation matches 1.. as @s run function svm_ep:system/set_random_rotation_y