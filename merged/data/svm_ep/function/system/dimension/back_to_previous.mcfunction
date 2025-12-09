
scoreboard players operation %OLD svm_ep.previous_dimension = @s svm_ep.previous_dimension
execute at @s run function svm_ep:system/dimension/save

#PREVENT LOOPING AND TRAPPED IN THE SAME DIMENSION (not the best way but works fine ig)
execute if score %OLD svm_ep.previous_dimension = @s svm_ep.previous_dimension run scoreboard players set %OLD svm_ep.previous_dimension 0

execute if score %OLD svm_ep.previous_dimension matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score %OLD svm_ep.previous_dimension matches 1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score %OLD svm_ep.previous_dimension matches 2 in minecraft:the_end run tp @s ~ ~ ~


execute if score %OLD svm_ep.previous_dimension matches 0..2 at @s run return run function svm_ep:system/dimension/spread

execute store result storage svm_ep:dimension temp.index_to_tp int 1 run scoreboard players get %OLD svm_ep.previous_dimension
function svm_ep:system/dimension/get_from_index with storage svm_ep:dimension temp
execute at @s run function svm_ep:system/dimension/spread
