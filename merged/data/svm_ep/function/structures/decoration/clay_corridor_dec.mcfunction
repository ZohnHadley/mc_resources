execute store result score @s svm_ep.numbers run random value 1..10

execute at @s[scores={svm_ep.numbers=1..3}] run setblock ~ ~ ~ minecraft:clay
execute at @s[scores={svm_ep.numbers=4..5}] run setblock ~ ~ ~ minecraft:white_glazed_terracotta
execute at @s[scores={svm_ep.numbers=6..7}] run setblock ~ ~ ~ minecraft:decorated_pot
execute at @s[scores={svm_ep.numbers=8..}] run setblock ~ ~ ~ minecraft:air