scoreboard players operation @s svm_ep.previous_dimension = @s svm_ep.dimension_pre.black_hole
execute at @s run function svm_ep:system/dimension/back_to_previous
effect give @s minecraft:weakness 30 1 true
effect give @s minecraft:slowness 30 1 true
effect give @s minecraft:nausea 10 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players reset @s svm_ep.p.void_in_black_hole
