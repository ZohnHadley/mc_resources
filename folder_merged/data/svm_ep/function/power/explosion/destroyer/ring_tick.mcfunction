scoreboard players add @s svm_ep.lifetime 1

data merge entity @s[scores={svm_ep.lifetime=100}] {transformation:{scale:[0f,0f,0f]},interpolation_duration:15,start_interpolation:-1}

kill @s[scores={svm_ep.lifetime=200..}]
execute at @s run tp @s ~ ~ ~ ~17 ~
execute at @s run particle minecraft:flame ~ ~ ~ 4 0.15 4 0.6 15