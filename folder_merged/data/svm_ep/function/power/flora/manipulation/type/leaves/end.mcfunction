kill @s
particle minecraft:poof ~ ~ ~ 0 0 0 0.15 5
execute if block ~ ~ ~ #svm_core:no_hitbox run function svm_ep:break_block
clone from svm_ep:technical 0 0 0 0 0 0 ~ ~ ~ filtered #svm_ep:flora_manipulation/wood move
execute if block ~ ~ ~ #svm_ep:flora_manipulation/wood run function svm_ep:break_block
