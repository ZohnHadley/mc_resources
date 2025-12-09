tp @s ~ ~ ~ facing entity @e[tag=rotator,limit=1]
scoreboard players remove @s[tag=!svm_ep.black_hole] svm_ep.lifetime 50
tag @s add svm_ep.void_manipulated
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 10
execute at @s run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 0.5 0.75
execute at @s[tag=svm_ep.charging_void] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.7 1.7
execute at @s[tag=svm_ep.charging_void] run playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 1.5 0.35