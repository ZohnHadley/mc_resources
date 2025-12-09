
tp @s @n[tag=same_id]

execute store result score m.x svm_ep.numbers run data get entity @s Pos[0] 100
execute store result score m.y svm_ep.numbers run data get entity @s Pos[1] 100
execute store result score m.z svm_ep.numbers run data get entity @s Pos[2] 100

tp @s ~ ~ ~
execute store result score m.x2 svm_ep.numbers run data get entity @s Pos[0] 100
execute store result score m.y2 svm_ep.numbers run data get entity @s Pos[1] 100
execute store result score m.z2 svm_ep.numbers run data get entity @s Pos[2] 100

execute store result entity @s Motion[0] double 0.0023 run scoreboard players operation m.x svm_ep.numbers -= m.x2 svm_ep.numbers
execute store result entity @s Motion[1] double 0.0015 run scoreboard players operation m.y svm_ep.numbers -= m.y2 svm_ep.numbers
execute store result entity @s Motion[2] double 0.0023 run scoreboard players operation m.z svm_ep.numbers -= m.z2 svm_ep.numbers