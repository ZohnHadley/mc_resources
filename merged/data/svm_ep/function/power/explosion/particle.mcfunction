particle minecraft:dust{color:[18000000f,0.64f,0f],scale:0.3f} ~ ~ ~ 0.04 0.04 0.04 0 1
particle minecraft:dust{color:[1f,0.14f,0f],scale:0.13f} ~ ~ ~ 0.24 0.24 0.24 0 1

execute if predicate svm_ep:chance/20_percent run particle minecraft:lava ~ ~ ~ 0.24 0.24 0.24 0 1
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.05 6
execute if predicate svm_ep:chance/20_percent run particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.1 1


