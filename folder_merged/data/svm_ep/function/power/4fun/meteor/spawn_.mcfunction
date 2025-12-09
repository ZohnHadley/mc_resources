tag @s add svm_ep.meteor
function svm_ep:system/set_random_rotation
$execute at @s run tp @s ~$(r1) 290 ~$(r2) ~ ~90
scoreboard players set @s svm_ep.projectile 5

data merge entity @s {teleport_duration:1,transformation:{scale:[2.05f,2.05f,2.05f]},interpolation_duration:1,start_interpolation:-1}
execute store result score @s svm_ep.numbers run random value 1..7
#data merge entity @s[scores={svm_ep.numbers=1}] {teleport_duration:1,transformation:{scale:[5.05f,5.05f,5.05f]},interpolation_duration:1,start_interpolation:-1}
#data merge entity @s[scores={svm_ep.numbers=2}] {teleport_duration:1,transformation:{scale:[4.05f,4.05f,4.05f]},interpolation_duration:1,start_interpolation:-1}
#data merge entity @s[scores={svm_ep.numbers=3}] {teleport_duration:1,transformation:{scale:[1.05f,1.05f,1.05f]},interpolation_duration:1,start_interpolation:-1}
#data merge entity @s[scores={svm_ep.numbers=4}] {teleport_duration:1,transformation:{scale:[3.05f,3.05f,3.05f]},interpolation_duration:1,start_interpolation:-1}
#data merge entity @s[scores={svm_ep.numbers=5}] {teleport_duration:1,transformation:{scale:[2.05f,2.05f,2.05f]},interpolation_duration:1,start_interpolation:-1}

item replace entity @s container.0 with minecraft:magma_block
data modify entity @s CustomName set value '[{"text":"meteor"}]'