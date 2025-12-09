execute if block ~ ~ ~ fire run return 0
execute if block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~-0.51 ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ fire[age=3]
execute if block ~ ~ ~ fire run function svm_ep:power/fire/success_fire