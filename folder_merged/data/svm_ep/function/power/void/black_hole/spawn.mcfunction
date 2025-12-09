tag @s add executor
execute summon item_display at @s run function svm_ep:power/void/black_hole/setup
tag @s remove executor
scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s svm_ep.p.void_black_hole_distance
tag @s remove shoot