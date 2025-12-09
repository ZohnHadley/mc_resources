$execute at @s positioned ^ ^ ^$(r) run $(c)
#$tellraw @s "$(c)"
scoreboard players remove %POINTS svm_ep.numbers 1
$execute at @s run tp @s ~ ~ ~ ~ ~-$(a)

execute if score %POINTS svm_ep.numbers matches 1.. run return run function svm_ep:system/sphere/place_point with storage svm_ep:math input
execute unless score %POINTS svm_ep.numbers matches 1.. run function svm_ep:system/sphere/change_angle with storage svm_ep:math input