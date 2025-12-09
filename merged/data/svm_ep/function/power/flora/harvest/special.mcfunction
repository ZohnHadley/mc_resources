execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:poof ~ ~0.5 ~ 0.4 0.1 0.4 0.05 10
playsound minecraft:entity.breeze.shoot master @a[distance=..25] ~ ~1 ~ 0.5 1.8

scoreboard players operation @s svm_ep.p.flora_harvest_max_length_prev = %total svm_ep.raycast_length
scoreboard players add @s svm_ep.p.flora_harvest_max_length_prev 4
scoreboard players set @s svm_ep.raycast_length -1
scoreboard players add @s svm_ep.mana_drain 145

execute if block ~ ~ ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:dirt
execute if block ~ ~ ~ minecraft:rooted_dirt run setblock ~ ~ ~ minecraft:dirt
execute if block ~ ~ ~ minecraft:podzol run setblock ~ ~ ~ minecraft:dirt
execute if block ~ ~ ~ minecraft:mycelium run setblock ~ ~ ~ minecraft:dirt
execute if block ~ ~ ~ minecraft:muddy_mangrove_roots run setblock ~ ~ ~ minecraft:mud
execute if block ~ ~ ~ minecraft:mossy_cobblestone run setblock ~ ~ ~ minecraft:cobblestone
execute if block ~ ~ ~ minecraft:mossy_stone_bricks run setblock ~ ~ ~ minecraft:stone_bricks
execute if block ~ ~ ~ minecraft:infested_mossy_stone_bricks run setblock ~ ~ ~ minecraft:infested_stone_bricks

execute unless entity @s[scores={svm_ep.selected_ability=7}] run return 0
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:dirt replace minecraft:grass_block
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:dirt replace minecraft:rooted_dirt
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:dirt replace minecraft:podzol
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:dirt replace minecraft:mycelium
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:mud replace minecraft:muddy_mangrove_roots
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:cobblestone replace minecraft:mossy_cobblestone
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:stone_bricks replace minecraft:mossy_stone_bricks
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:infested_stone_bricks replace minecraft:infested_mossy_stone_bricks
