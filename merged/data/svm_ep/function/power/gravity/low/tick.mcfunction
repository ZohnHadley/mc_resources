function svm_ep:system/get_rotation
scoreboard players add @s[scores={svm_ep.used_move=..680}] svm_ep.used_move 2

scoreboard players add @s svm_ep.mana_drain 15

#effect give @s minecraft:slow_falling 1 0 true
effect give @s minecraft:jump_boost 1 3 true
scoreboard players add @s[scores={rot.y=..-75}] svm_ep.mana_drain 10
scoreboard players add @s[scores={rot.y=..-45}] svm_ep.mana_drain 10

effect give @s[scores={rot.y=..-90}] minecraft:levitation 1 12 true
effect give @s[scores={rot.y=..-75}] minecraft:levitation 1 8 true
effect give @s[scores={rot.y=..-60}] minecraft:levitation 1 4 true
effect give @s[scores={rot.y=..-45}] minecraft:levitation 1 0 true
effect clear @s[scores={rot.y=-45..}] minecraft:levitation


execute as @s[scores={svm_ep.mana=..0}] run effect clear @s minecraft:levitation
execute as @s[scores={svm_ep.mana=..0}] run scoreboard players reset @s svm_ep.p.gravity_low

scoreboard players set @s svm_ep.effect 1
execute unless entity @s[scores={svm_ep.e.weight_neutralizer=2..}] run scoreboard players set @s svm_ep.e.weight_neutralizer 2

execute as @s[scores={svm_ep.p.gravity_low=2..}] run function svm_ep:power/gravity/low/zone_tick

#execute as @s[scores={svm_ep.mana=..0}] run effect clear @s minecraft:slow_falling
execute as @s[scores={svm_ep.mana=..0}] run effect clear @s minecraft:jump_boost