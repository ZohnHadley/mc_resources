scoreboard players set @s svm_ep.projectile 1
data merge entity @s {brightness:{sky:15,block:15},teleport_duration:5,transformation:{scale:[1.4f,1.4f,1.4f]},interpolation_duration:1,start_interpolation:-1}

tag @s add svm_ep.gravity_field_stripe
tag @s add svm_ep.no_gravity
data modify entity @s CustomName set value '[{"text":"gravity field stripe"}]'
execute store result entity @s Rotation[0] double 1 run random value -180..180
execute store result entity @s Rotation[1] double 1 run random value -45..45



scoreboard players operation @s svm_ep.p.gravity_field_color = @n[scores={svm_ep.p.gravity_field_color=0..}] svm_ep.p.gravity_field_color
function svm_ep:power/gravity/field/setup_item_inside


execute store result score @s svm_ep.p.gravity_field_stripe_direction_x run random value -1..2
execute store result score @s svm_ep.p.gravity_field_stripe_direction_y run random value -1..2

#execute summon item_display run function svm_ep:power/gravity/field/display/setup2
