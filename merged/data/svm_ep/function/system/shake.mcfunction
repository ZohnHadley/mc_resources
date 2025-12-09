scoreboard players remove @s svm_ep.shaking 1
scoreboard players remove @s[scores={svm_ep.shaking=80..}] svm_ep.shaking 10
execute store result score .c svm_ep.tp_to run random value -1..1
execute store result score .v svm_ep.tp_to run random value -1..1
execute as @s[scores={svm_ep.shaking=5..}] store result score .c svm_ep.tp_to run random value -2..2
execute as @s[scores={svm_ep.shaking=5..}] store result score .v svm_ep.tp_to run random value -2..2
execute as @s[scores={svm_ep.shaking=10..}] store result score .c svm_ep.tp_to run random value -3..3
execute as @s[scores={svm_ep.shaking=10..}] store result score .v svm_ep.tp_to run random value -3..3
execute as @s[scores={svm_ep.shaking=15..}] store result score .c svm_ep.tp_to run random value -4..4
execute as @s[scores={svm_ep.shaking=15..}] store result score .v svm_ep.tp_to run random value -4..4
execute as @s[scores={svm_ep.shaking=20..}] store result score .c svm_ep.tp_to run random value -5..5
execute as @s[scores={svm_ep.shaking=20..}] store result score .v svm_ep.tp_to run random value -5..5
data modify storage svm_ep:coordinates input set value {"c":0,"v":0}
execute store result storage svm_ep:coordinates input.c int 1 run scoreboard players get .c svm_ep.tp_to
execute store result storage svm_ep:coordinates input.v int 1 run scoreboard players get .v svm_ep.tp_to

function svm_ep:system/test/macro/rot0 with storage svm_ep:coordinates input