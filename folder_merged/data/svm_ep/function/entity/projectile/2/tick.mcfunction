scoreboard players add @s svm_ep.lifetime 1
execute as @s[scores={svm_ep.lifetime=..35}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.15 30 force @a[distance=..150]
execute as @s[scores={svm_ep.lifetime=..35}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 5 5 5 0.1 30 force @a[distance=..150]
execute as @s[scores={svm_ep.lifetime=35..}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 2 2 2 0.08 5 force @a[distance=..150]
execute as @s[scores={svm_ep.lifetime=35..}] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 5 5 5 0.05 5 force @a[distance=..150]

kill @s[scores={svm_ep.lifetime=20..}]
execute unless entity @s[scores={svm_ep.lifetime=3..4}] unless entity @s[scores={svm_ep.lifetime=14}] run return 0
execute as @s[scores={svm_ep.lifetime=4}] run function svm_ep:system/set_random_rotation
data merge entity @s[scores={svm_ep.lifetime=3}] {teleport_duration:250,transformation:{scale:[140f,140f,140f]},interpolation_duration:12,start_interpolation:-1}
#data merge entity @s[scores={svm_ep.lifetime=14}] {transformation:{scale:[0f,0f,0f]},interpolation_duration:10,start_interpolation:-1}
