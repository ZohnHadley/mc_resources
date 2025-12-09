execute at @s in svm_ep:domain_expansion/infinite_void run tp @s ~ ~ ~
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s[type=player] svm_ep.e.infinite_void_fov 120
scoreboard players set @s[type=player] svm_ep.effect 1

execute store result storage svm_ep:coordinates input.x double 0.1 run random value -35..35
data modify storage svm_ep:coordinates input.y set value 0
execute store result storage svm_ep:coordinates input.z double 0.1 run random value -35..35
execute at @s run function svm_ep:system/test/macro/tp1 with storage svm_ep:coordinates input
