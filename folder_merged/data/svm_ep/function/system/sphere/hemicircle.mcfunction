#FOR MACROS: r-radius, c-command, p-points
$data merge storage svm_ep:math {"input":{"c":"$(c)","p":"$(p)"}}


scoreboard players set @s svm_ep.numbers 180
scoreboard players operation @s svm_ep.numbers *= %10 svm_ep.numbers
scoreboard players operation @s svm_ep.numbers *= %10 svm_ep.numbers
scoreboard players operation @s svm_ep.numbers *= %10 svm_ep.numbers

$scoreboard players set %POINTS svm_ep.numbers $(p)
scoreboard players remove %POINTS svm_ep.numbers 1
scoreboard players operation @s svm_ep.numbers /= %POINTS svm_ep.numbers

execute store result storage svm_ep:math input.a int 0.001 run scoreboard players get @s svm_ep.numbers

tp @s ~ ~ ~ 0 90

$scoreboard players set %POINTS svm_ep.numbers $(p)

function svm_ep:system/sphere/place_point with storage svm_ep:math input
tp @s ~ ~ ~ ~ ~