execute rotated 0 0 positioned ^ ^ ^ run function svm_ep:system/crack/spherical/3x3
execute rotated 0 0 positioned ^ ^ ^1 run function svm_ep:system/crack/spherical/3x3
execute rotated 0 0 positioned ^ ^ ^-1 run function svm_ep:system/crack/spherical/3x3

execute rotated 0 90 positioned ^ ^ ^2 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 0 90 positioned ^ ^ ^3 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 0 90 positioned ^ ^ ^4 run function svm_ep:system/crack/spherical/5x5_star_w_chance

execute rotated 0 -90 positioned ^ ^ ^2 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 0 -90 positioned ^ ^ ^3 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 0 -90 positioned ^ ^ ^4 run function svm_ep:system/crack/spherical/5x5_star_w_chance

execute rotated 0 0 positioned ^ ^ ^2 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 0 0 positioned ^ ^ ^3 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 0 0 positioned ^ ^ ^4 run function svm_ep:system/crack/spherical/5x5_star_w_chance

execute rotated 90 0 positioned ^ ^ ^2 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 90 0 positioned ^ ^ ^3 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 90 0 positioned ^ ^ ^4 run function svm_ep:system/crack/spherical/5x5_star_w_chance

execute rotated 180 0 positioned ^ ^ ^2 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 180 0 positioned ^ ^ ^3 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 180 0 positioned ^ ^ ^4 run function svm_ep:system/crack/spherical/5x5_star_w_chance

execute rotated 270 0 positioned ^ ^ ^2 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 270 0 positioned ^ ^ ^3 run function svm_ep:system/crack/spherical/5x5_ball
execute rotated 270 0 positioned ^ ^ ^4 run function svm_ep:system/crack/spherical/5x5_star_w_chance


execute if predicate svm_ep:chance/67_percent positioned ^3 ^3 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/67_percent positioned ^-3 ^3 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/67_percent positioned ^ ^3 ^3 run function svm_ep:break_block
execute if predicate svm_ep:chance/67_percent positioned ^ ^3 ^-3 run function svm_ep:break_block

execute if predicate svm_ep:chance/67_percent positioned ^3 ^-3 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/67_percent positioned ^-3 ^-3 ^ run function svm_ep:break_block
execute if predicate svm_ep:chance/67_percent positioned ^ ^-3 ^3 run function svm_ep:break_block
execute if predicate svm_ep:chance/67_percent positioned ^ ^-3 ^-3 run function svm_ep:break_block
