scoreboard players set ices svm_ep.numbers 1

execute at @s run tag @e[type=!#svm_ep:technical,distance=..2.25] add hitby
execute at @s run tag @e[type=!#svm_ep:technical,dx=2] add hitby

execute on passengers at @s positioned ^ ^ ^1 run function svm_ep:power/ice/launch/berg/hit

execute as @e[tag=hitby] run function svm_ep:power/ice/launch/hitby

execute at @s run particle minecraft:item{item:ice} ~ ~ ~ 0 0 0 0.4 200
execute at @s run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 0.65 1.2
summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}
execute at @s if items entity @s contents minecraft:packed_ice run scoreboard players add ices svm_ep.numbers 3
execute at @s if items entity @s contents minecraft:blue_ice run scoreboard players add ices svm_ep.numbers 11

execute if score ices svm_ep.numbers matches 4..11 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
execute if score ices svm_ep.numbers matches 12..27 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute if score ices svm_ep.numbers matches 28..57 run summon marker ~ ~ ~ {Tags:["svm_ep.crack_4","svm_ep.crack"]}
execute if score ices svm_ep.numbers matches 58.. run summon marker ~ ~ ~ {Tags:["svm_ep.crack_5","svm_ep.crack"]}
particle minecraft:gust ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..120]

kill @s
tag @s remove executor
tag @e remove same_id