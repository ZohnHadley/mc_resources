function svm_ep:system/dimension/save
scoreboard players operation @s svm_ep.dimension_pre.black_hole = @s svm_ep.previous_dimension

execute at @s in svm_ep:void run tp @s ~ 64 ~
scoreboard players reset @s svm_ep.p.void_in_black_hole
