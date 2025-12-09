execute at @s run summon marker ~ ~ ~ {Tags:["new2"]}


execute store result score 0x svm_ep.numbers run data get entity @s Pos[0] 650
execute store result score 0y svm_ep.numbers run data get entity @s Pos[1] 650
execute store result score 0z svm_ep.numbers run data get entity @s Pos[2] 650

tp @s ^ ^ ^7
execute store result score 1x svm_ep.numbers run data get entity @s Pos[0] 650
execute store result score 1y svm_ep.numbers run data get entity @s Pos[1] 650
execute store result score 1z svm_ep.numbers run data get entity @s Pos[2] 650
execute at @n[tag=new2] run tp @s ~ ~ ~
kill @n[tag=new2]

execute store result score mx svm_ep.numbers run data get entity @s Motion[0] 7000
execute store result score my svm_ep.numbers run data get entity @s Motion[1] 7000
execute store result score mz svm_ep.numbers run data get entity @s Motion[2] 7000

scoreboard players operation 1x svm_ep.numbers += mx svm_ep.numbers
scoreboard players operation 1y svm_ep.numbers += my svm_ep.numbers
scoreboard players operation 1z svm_ep.numbers += mz svm_ep.numbers

execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation 1x svm_ep.numbers -= 0x svm_ep.numbers
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation 1y svm_ep.numbers -= 0y svm_ep.numbers
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation 1z svm_ep.numbers -= 0z svm_ep.numbers