execute store result score .h svm_ep.tp_to run random value -4..4
execute store result score .v svm_ep.tp_to run random value -4..4

execute if score .h svm_ep.tp_to matches 1 at @s run tp @s ^0.15 ^ ^
execute if score .h svm_ep.tp_to matches 2 at @s run tp @s ^0.15 ^ ^
execute if score .h svm_ep.tp_to matches 3 at @s run tp @s ^0.15 ^ ^
execute if score .h svm_ep.tp_to matches 4 at @s run tp @s ^0.15 ^ ^

execute if score .h svm_ep.tp_to matches -1 at @s run tp @s ^-0.15 ^ ^
execute if score .h svm_ep.tp_to matches -2 at @s run tp @s ^-0.15 ^ ^
execute if score .h svm_ep.tp_to matches -3 at @s run tp @s ^-0.15 ^ ^
execute if score .h svm_ep.tp_to matches -4 at @s run tp @s ^-0.15 ^ ^

execute if score .v svm_ep.tp_to matches 1 at @s run tp @s ^ ^0.15 ^
execute if score .v svm_ep.tp_to matches 2 at @s run tp @s ^ ^0.15 ^
execute if score .v svm_ep.tp_to matches 3 at @s run tp @s ^ ^0.15 ^
execute if score .v svm_ep.tp_to matches 4 at @s run tp @s ^ ^0.15 ^

execute if score .v svm_ep.tp_to matches -1 at @s run tp @s ^ ^-0.15 ^
execute if score .v svm_ep.tp_to matches -2 at @s run tp @s ^ ^-0.15 ^
execute if score .v svm_ep.tp_to matches -3 at @s run tp @s ^ ^-0.15 ^
execute if score .v svm_ep.tp_to matches -4 at @s run tp @s ^ ^-0.15 ^