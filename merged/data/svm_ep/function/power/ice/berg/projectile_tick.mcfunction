scoreboard players add @s svm_ep.lifetime 1
function svm_ep:power/ice/berg/place_ice1
execute positioned ^ ^ ^0.75 run function svm_ep:power/ice/berg/place_ice1
execute positioned ^ ^ ^1.75 run function svm_ep:power/ice/berg/place_ice1


execute as @s[scores={svm_ep.lifetime=..-6}] run function svm_ep:power/ice/berg/place_big
execute as @s[scores={svm_ep.lifetime=..-15}] positioned ^1.5 ^ ^ run function svm_ep:power/ice/berg/place_big
execute as @s[scores={svm_ep.lifetime=..-15}] positioned ^-1.5 ^ ^ run function svm_ep:power/ice/berg/place_big
execute as @s[scores={svm_ep.lifetime=..-15}] positioned ^ ^1.5 ^ run function svm_ep:power/ice/berg/place_big
execute as @s[scores={svm_ep.lifetime=..-15}] positioned ^ ^-1.5 ^ run function svm_ep:power/ice/berg/place_big


execute at @s[scores={svm_ep.p.iceberg_charged=4..}] positioned ^ ^ ^-0.45 run function svm_ep:power/ice/berg/place_ice1
execute at @s[scores={svm_ep.p.iceberg_charged=5..}] positioned ^ ^ ^-0.95 run function svm_ep:power/ice/berg/place_ice1
execute at @s[scores={svm_ep.p.iceberg_charged=6..}] positioned ^0.7 ^ ^-0.45 run function svm_ep:power/ice/berg/place_ice1
execute at @s[scores={svm_ep.p.iceberg_charged=6..}] positioned ^-0.7 ^ ^-0.45 run function svm_ep:power/ice/berg/place_ice1
execute at @s[scores={svm_ep.p.iceberg_charged=6..}] positioned ^ ^0.7 ^-0.45 run function svm_ep:power/ice/berg/place_ice1
execute at @s[scores={svm_ep.p.iceberg_charged=6..}] positioned ^ ^-0.7 ^-0.45 run function svm_ep:power/ice/berg/place_ice1

execute at @s run tag @e[type=!#svm_ep:technical,distance=..2.5] add hitby
execute at @s if entity @e[tag=hitby,distance=..15] run function svm_ep:power/ice/berg/hit_entity

execute at @s run playsound minecraft:block.glass.break master @a[distance=..17] ~ ~ ~ 1 0.6
scoreboard players operation @a[distance=..10] svm_ep.shaking = @s svm_ep.p.iceberg_charged
execute at @s as @a[distance=..10] unless entity @s[scores={svm_ep.shaking=10..}] run scoreboard players add @s svm_ep.shaking 1


tp @s ^ ^ ^1.5
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #minecraft:ice run kill @s
kill @s[scores={svm_ep.lifetime=5..}]