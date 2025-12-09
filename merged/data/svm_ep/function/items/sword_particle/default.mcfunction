
particle minecraft:dust{color:[0.9f,0.9f,0.9f],scale:0.8f} ~ ~ ~ 0.04 0.04 0.04 0 1
particle minecraft:dust{color:[0.9f,0.9f,0.9f],scale:0.8f} ^ ^ ^0.1 0.04 0.04 0.04 0 1
particle minecraft:dust{color:[0.9f,0.9f,0.9f],scale:0.8f} ^ ^ ^-0.1 0.04 0.04 0.04 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:cloud ~ ~ ~ 0.05 0.05 0.05 0.055 1
execute if predicate svm_ep:chance/20_percent run particle minecraft:sweep_attack