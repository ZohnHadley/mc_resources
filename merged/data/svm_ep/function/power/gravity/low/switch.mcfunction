tag @s[tag=!keep_gravity,scores={svm_ep.p.gravity_low=1..}] add has

execute at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1.03 1

execute at @s[tag=has] run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0.7
execute at @s[tag=!has] run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.7
effect clear @s[tag=has] minecraft:slow_falling
effect clear @s[tag=has] minecraft:jump_boost
effect clear @s[tag=has] minecraft:levitation
scoreboard players set @s[tag=!has] svm_ep.p.gravity_low 1
scoreboard players reset @s[tag=has] svm_ep.p.gravity_low
scoreboard players set @s[tag=keep_gravity] svm_ep.p.gravity_low 2

tag @s remove has
tag @s remove keep_gravity