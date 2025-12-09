advancement revoke @s only svm_ep:eat/golden_heart
function svm_ep:items/golden/eat_generic

scoreboard players add @s svm_ep.health_boost 1

scoreboard players operation %TOTAL_HEART_BOOST svm_ep.numbers = @s svm_ep.health_boost
scoreboard players operation %TOTAL_HEART_BOOST svm_ep.numbers *= goldenHeartBoost svm_ep.gamerule
execute if score %TOTAL_HEART_BOOST svm_ep.numbers >= goldenHeartMaxBoost svm_ep.gamerule run scoreboard players operation %TOTAL_HEART_BOOST svm_ep.numbers = goldenHeartMaxBoost svm_ep.gamerule


execute store result storage svm_ep:numbers input.value int 1 run scoreboard players get %TOTAL_HEART_BOOST svm_ep.numbers
function svm_ep:items/golden/update_health_boost with storage svm_ep:numbers input


execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s run particle minecraft:heart ~ ~0.5 ~ 0.5 0.7 0.5 0.1 8
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item{item:gold_ingot} ~ ~ ~ 0.05 0.05 0.05 0.08 10