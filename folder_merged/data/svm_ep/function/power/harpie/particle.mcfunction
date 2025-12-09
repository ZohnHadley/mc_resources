particle minecraft:dust{color:[0.7f,0.7f,0.7f],scale:1f} ~ ~ ~ 0.12 0.12 0.12 0 1
particle minecraft:dust{color:[0.5f,0.5f,0.5f],scale:1f} ~ ~ ~ 0.24 0.24 0.24 0 1

particle minecraft:item{item:feather} ~ ~ ~ 0.24 0.24 0.24 0.1 4

execute if predicate svm_ep:chance/20_percent run particle minecraft:sweep_attack ~ ~ ~ 0.15 0.15 0.15 0.05 1