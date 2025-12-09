scoreboard players set @s svm_ep.previous_dimension -1

execute if dimension minecraft:overworld run scoreboard players set @s svm_ep.previous_dimension 0
execute if dimension minecraft:the_nether run scoreboard players set @s svm_ep.previous_dimension 1
execute if dimension minecraft:the_end run scoreboard players set @s svm_ep.previous_dimension 2

execute as @s[scores={svm_ep.previous_dimension=0..2}] run return 0

data modify storage svm_ep:dimension temp.dimension set from entity @p[distance=..10000] Dimension
function svm_ep:system/dimension/save_macro with storage svm_ep:dimension temp