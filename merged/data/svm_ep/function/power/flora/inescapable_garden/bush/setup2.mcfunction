tag @s add svm_ep.ticked

data modify entity @s transformation.scale set value [40f,40f,40f]
data modify entity @s interpolation_duration set value 150
data modify entity @s start_interpolation set value -1
execute at @s run function svm_ep:system/start_random_rotation_x
execute as @s[tag=svm_ep.ticked] at @s run tp @s ^ ^ ^150
execute at @s run function svm_ep:system/start_random_rotation_y
