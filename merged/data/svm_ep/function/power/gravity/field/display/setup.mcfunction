tag @s add svm_ep.gravity_field_display
tag @s add svm_ep.check_to_recall
data modify entity @s CustomName set value '[{"text":"gravity field display"}]'
function svm_ep:system/set_random_rotation_non_player
scoreboard players operation @s svm_ep.p.gravity_field_color = @n[scores={svm_ep.p.gravity_field_color=0..}] svm_ep.p.gravity_field_color
function svm_ep:power/gravity/field/setup_item_inside

data merge entity @s {brightness:{sky:15,block:15},teleport_duration:5,transformation:{scale:[0.0f,0.0f,0.0f]},interpolation_duration:1,start_interpolation:-1}
ride @s mount @n[tag=svm_ep.gravity_field]
#execute summon item_display run function svm_ep:power/gravity/field/display/setup2
