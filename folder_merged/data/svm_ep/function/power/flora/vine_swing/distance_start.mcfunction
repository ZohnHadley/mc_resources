# Storing armor stand 1 coordinates
execute store result score $x svm_ep.numbers run data get entity @n Pos[0] 100
execute store result score $y svm_ep.numbers run data get entity @n Pos[1] 100
scoreboard players add $y svm_ep.numbers 50
execute store result score $z svm_ep.numbers run data get entity @n Pos[2] 100


# Storing armor stand 2 coordinates
execute store result score $x2 svm_ep.numbers run data get entity @n[tag=executor] Pos[0] 100
execute store result score $y2 svm_ep.numbers run data get entity @n[tag=executor] Pos[1] 100
execute store result score $z2 svm_ep.numbers run data get entity @n[tag=executor] Pos[2] 100
# Calculate the difference
scoreboard players operation $x svm_ep.numbers -= $x2 svm_ep.numbers
scoreboard players operation $y svm_ep.numbers -= $y2 svm_ep.numbers
scoreboard players operation $z svm_ep.numbers -= $z2 svm_ep.numbers
# Store result in args
execute store result storage svm_ep:numbers args.x int 1 run scoreboard players get $x svm_ep.numbers
execute store result storage svm_ep:numbers args.y int 1 run scoreboard players get $y svm_ep.numbers
execute store result storage svm_ep:numbers args.z int 1 run scoreboard players get $z svm_ep.numbers
# Compute distance with args
execute summon block_display run function svm_ep:power/flora/vine_swing/distance_get with storage svm_ep:numbers args