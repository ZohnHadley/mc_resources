execute if block ~ ~ ~ #minecraft:ice unless block ~ ~ ~ blue_ice if predicate svm_ep:chance/20_percent run function svm_ep:power/ice/upgrade
execute if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ ice
particle minecraft:snowflake ~ ~ ~ 1 1 1 0.2 1
