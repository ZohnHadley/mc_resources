execute store result score @s svm_ep.numbers run random value 1..10

execute at @s[scores={svm_ep.numbers=1..2}] run function svm_ep:structures/decoration/barrel
execute at @s[scores={svm_ep.numbers=3..4}] run function svm_ep:structures/decoration/chest
execute at @s[scores={svm_ep.numbers=5}] run setblock ~ ~ ~ minecraft:crafting_table
execute at @s[scores={svm_ep.numbers=6}] run setblock ~ ~ ~ minecraft:bookshelf
execute at @s[scores={svm_ep.numbers=7}] run setblock ~ ~ ~ minecraft:smithing_table
execute at @s[scores={svm_ep.numbers=8}] run setblock ~ ~ ~ minecraft:air
execute at @s[scores={svm_ep.numbers=9..10}] run setblock ~ ~ ~ minecraft:cobweb

data modify block ~ ~0.3 ~ LootTable set value "svm_ep:chests/clock_tower"

