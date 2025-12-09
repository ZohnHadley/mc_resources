
execute store result score @s pos.x run data get entity @s Pos[0] 70
execute store result score @s pos.y run data get entity @s Pos[1] 70
execute store result score @s pos.z run data get entity @s Pos[2] 70

tp @s ^ ^ ^1
execute store result score @s pos.x2 run data get entity @s Pos[0] 70
execute store result score @s pos.y2 run data get entity @s Pos[1] 70
execute store result score @s pos.z2 run data get entity @s Pos[2] 70

tp @s ~ ~ ~
execute store result entity @s Motion[0] double 0.0023 run scoreboard players operation @s pos.x2 -= @s pos.x
execute store result entity @s Motion[1] double 0.0023 run scoreboard players operation @s pos.y2 -= @s pos.y
execute store result entity @s Motion[2] double 0.0023 run scoreboard players operation @s pos.z2 -= @s pos.z
scoreboard players reset @s pos.x
scoreboard players reset @s pos.y
scoreboard players reset @s pos.z