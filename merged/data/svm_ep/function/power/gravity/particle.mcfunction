
#execute positioned ^-0.2 ^ ^ run particle dust{color: [1 0.04 0 1.88 ~ ~ ~ 0.14 0.14 0.14 0 1
#execute positioned ^0.2 ^ ^ run particle dust{color: [1 0.34 0 1.38 ~ ~ ~ 0.24 0.24 0.24 0 2
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:0.9f} ~ ~ ~ 0.02 0.02 0.02 0 1
particle minecraft:dust{color:[1f,1f,1f],scale:0.8f} ~ ~ ~ 0.23 0.23 0.23 0 1
particle minecraft:dust{color:[0.5f,0.5f,0.5f],scale:0.7f} ~ ~ ~ 0.32 0.32 0.32 0 1
particle minecraft:dust{color:[0f,0f,0f],scale:0.6f} ~ ~ ~ 0.4 0.4 0.4 0 1

execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[1f,0f,0f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[0f,1f,0f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[0f,0f,1f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1

execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[18000000f,0f,0f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[0f,18000000f,0f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[0f,0f,118000000f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[18000000f,1f,1f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[1f,18000000f,1f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1
execute if predicate svm_ep:chance/10_percent run particle minecraft:dust{color:[1f,1f,118000000f],scale:0.6f} ~ ~ ~ 0.052 0.052 0.052 0 1

