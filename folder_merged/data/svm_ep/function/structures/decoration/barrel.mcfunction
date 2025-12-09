execute store result score @s svm_ep.numbers run random value 1..6

execute at @s[scores={svm_ep.numbers=1}] run setblock ~ ~ ~ minecraft:barrel[facing=down]
execute at @s[scores={svm_ep.numbers=2}] run setblock ~ ~ ~ minecraft:barrel[facing=up]
execute at @s[scores={svm_ep.numbers=3}] run setblock ~ ~ ~ minecraft:barrel[facing=east]
execute at @s[scores={svm_ep.numbers=4}] run setblock ~ ~ ~ minecraft:barrel[facing=north]
execute at @s[scores={svm_ep.numbers=5}] run setblock ~ ~ ~ minecraft:barrel[facing=south]
execute at @s[scores={svm_ep.numbers=6}] run setblock ~ ~ ~ minecraft:barrel[facing=west]


execute at @s run playsound minecraft:block.wood.place master @a[distance=..20] ~ ~ ~ 2 0.7