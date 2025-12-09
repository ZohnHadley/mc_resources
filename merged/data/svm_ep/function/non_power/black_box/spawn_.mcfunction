tag @s add svm_ep.black_box
function svm_ep:system/set_random_rotation
scoreboard players set @s svm_ep.projectile 88

data merge entity @s {teleport_duration:1,transformation:{scale:[0.05f,0.05f,0.05f]},interpolation_duration:1,start_interpolation:-1}
execute at @s run tp @s ~ ~ ~ ~ 0
item replace entity @s container.0 with warped_fungus_on_a_stick[minecraft:item_model="svm_ep:black_box"]
data modify entity @s CustomName set value '[{"text":"black_box"}]'