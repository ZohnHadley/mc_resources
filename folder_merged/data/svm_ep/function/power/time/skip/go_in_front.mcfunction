execute rotated ~ 0 positioned ^ ^ ^0.4 if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ~ ~ ~
execute at @s if block ~ ~-0.5 ~ #svm_ep:no_physical_hitbox run tp @s ~ ~-0.5 ~
execute if predicate svm_ep:chance/5_percent run function svm_ep:system/start_random_rotation_x
execute if predicate svm_ep:chance/1_percent run function svm_ep:system/start_random_rotation_y