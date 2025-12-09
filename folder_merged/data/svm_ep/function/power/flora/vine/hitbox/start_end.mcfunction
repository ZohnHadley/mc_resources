tag @s remove svm_ep.flora_vine_is_hitbox

execute on vehicle run data merge entity @s {interpolation_duration:5,start_interpolation:-1}
data modify entity @s transformation.translation[2] set value -4