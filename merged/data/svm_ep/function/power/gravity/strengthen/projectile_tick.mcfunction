scoreboard players add @s svm_ep.lifetime 1
kill @s[scores={svm_ep.lifetime=16..}]
data merge entity @s[scores={svm_ep.lifetime=2}] {transformation:{scale:[0.3f,0.3f,0.3f]},interpolation_duration:7,start_interpolation:-1}
data merge entity @s[scores={svm_ep.lifetime=12}] {transformation:{scale:[7.3f,7.3f,7.3f]},interpolation_duration:8,start_interpolation:-1}
function svm_ep:system/set_random_rotation_non_player

execute at @s[scores={svm_ep.lifetime=..3}] run playsound minecraft:entity.warden.angry master @a[distance=..25] ~ ~ ~ 0.4 0.9
execute at @s[scores={svm_ep.lifetime=11}] run playsound minecraft:entity.warden.attack_impact master @a[distance=..25] ~ ~ ~ 1 0.
execute as @s[scores={svm_ep.lifetime=12..}] at @s run function svm_ep:power/gravity/strengthen/projectile_tick2