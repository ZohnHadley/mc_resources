$execute at @s run tp @s ~ ~ ~ ~$(a) 90
$scoreboard players set %POINTS svm_ep.numbers $(p)
#scoreboard players remove %XZ_ANGLES svm_ep.numbers 1

execute store result score %ANGLE svm_ep.numbers run data get entity @s Rotation[0]
execute unless score %ANGLE svm_ep.numbers matches 0 run function svm_ep:system/sphere/place_point with storage svm_ep:math input