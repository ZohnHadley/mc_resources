data modify storage svm_ep:coordinates input set value {"x":0,"y":0,"z":0}
execute store result storage svm_ep:coordinates input.x int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage svm_ep:coordinates input.y int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage svm_ep:coordinates input.z int 1 run data get entity @s LastDeathLocation.pos[2]
data modify storage svm_ep:coordinates input.dimension set from entity @s LastDeathLocation.dimension
function svm_ep:system/tp_to_death0 with storage svm_ep:coordinates input