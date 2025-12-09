scoreboard players add @s svm_ep.lifetime 1

execute at @s run particle minecraft:flame ~ ~ ~ 1.7 1.7 1.7 0.25 2
execute at @s run particle minecraft:ash ~ ~ ~ 1.7 1.7 1.7 0.25 2
data merge entity @s[scores={svm_ep.lifetime=120..}] {transformation:{scale:[0f,0f,0f]},interpolation_duration:10,start_interpolation:-1}
execute at @s[scores={svm_ep.lifetime=..79}] at @e[type=item,distance=..6] if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ fire

kill @s[scores={svm_ep.lifetime=130..}]