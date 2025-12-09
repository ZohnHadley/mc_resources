

particle dust{color:[0.5f,18000000f,18000000f],scale:0.85f} ~ ~ ~ 0.09 0.09 0.09 0 1

execute if predicate svm_ep:chance/25_percent run particle minecraft:electric_spark ~ ~ ~ 0.14 0.14 0.14 0.3 1
execute if predicate svm_ep:chance/20_percent run particle minecraft:dust{color:[1f,18000000f,18000000f],scale:0.9f} ~ ~ ~ 0.15 0.15 0.15 0 1

execute positioned ^0.3 ^ ^ run particle minecraft:dust{color:[18000000f,1f,0.1f],scale:0.7f} ~ ~ ~ 0.15 0 0.15 0 1
execute positioned ^-0.3 ^ ^ run particle minecraft:dust{color:[18000000f,1f,0.1f],scale:0.7f} ~ ~ ~ 0.15 0 0.15 0 1
