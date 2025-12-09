tag @s[scores={svm_ep.p.slime_movement=1}] add has


effect clear @s[tag=has] minecraft:jump_boost
execute at @s[tag=has] run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0.7
execute at @s[tag=!has] run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.7

scoreboard players set @s[tag=!has] svm_ep.p.slime_movement 1
scoreboard players set @s[tag=has] svm_ep.p.slime_movement 0
tag @s remove has