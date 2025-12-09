tag @s add svm_ep.gravity_field_display
tag @s add svm_ep.check_to_recall
data modify entity @s CustomName set value '[{"text":"gravity field blast display"}]'
function svm_ep:system/set_random_rotation_non_player
scoreboard players operation @s svm_ep.p.gravity_field_color = @n[scores={svm_ep.p.gravity_field_color=0..}] svm_ep.p.gravity_field_color

function svm_ep:power/gravity/field/setup_item_inside


data merge entity @s {teleport_duration:2,transformation:{scale:[1.0f,1.0f,1.0f]},interpolation_duration:1,start_interpolation:-1}
ride @s mount @n[tag=svm_ep.gravity_field_blast]
#execute summon item_display run function svm_ep:power/gravity/field/display/setup2
