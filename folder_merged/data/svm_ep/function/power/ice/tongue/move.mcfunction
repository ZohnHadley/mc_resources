tp @s ^ ^ ^0.36
function svm_ep:power/ice/particle
execute as @e[tag=!same_id,distance=..1.5,type=!#svm_ep:technical] run tag @s add hitby
execute as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run tag @s add hitby
function svm_ep:power/ice/place_temporary_slow
execute positioned ^0.6 ^ ^ run function svm_ep:power/ice/place_temporary_slow
execute positioned ^-0.6 ^ ^ run function svm_ep:power/ice/place_temporary_slow
execute positioned ^0.3 ^ ^0.3 run function svm_ep:power/ice/place_temporary_slow
execute positioned ^-0.3 ^ ^0.3 run function svm_ep:power/ice/place_temporary_slow
execute positioned ^1.3 ^ ^ run function svm_ep:power/ice/place_temporary_slow
execute positioned ^-1.3 ^ ^ run function svm_ep:power/ice/place_temporary_slow

