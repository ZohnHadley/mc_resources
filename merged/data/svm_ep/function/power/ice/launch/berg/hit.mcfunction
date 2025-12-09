
particle minecraft:item{item:ice} ~ ~ ~ 0 0 0 0.4 20 force @a[distance=..120]
playsound minecraft:block.glass.break master @a[distance=..60] ~ ~ ~ 0.1 1.4 0.02

tag @e[type=!#svm_ep:technical,distance=..2] add hitby
tag @e[type=!#svm_ep:technical,dx=2] add hitby
scoreboard players add ices svm_ep.numbers 1
particle minecraft:gust ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..120]
execute unless entity @e[tag=svm_ep.crack,distance=..0.5] run summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}

kill @s