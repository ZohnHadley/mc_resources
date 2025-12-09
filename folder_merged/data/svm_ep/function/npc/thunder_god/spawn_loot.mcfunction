execute at @s run tp @s ~ ~12 ~ ~ 90

execute at @s positioned ~ ~ ~ if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:diamond_block
execute at @s positioned ~1 ~ ~1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~1 ~ ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~-1 ~ ~1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~-1 ~ ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~ ~1 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~ ~1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~-1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~ ~-1 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~ ~-1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~1 ~-1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block
execute at @s positioned ~-1 ~-1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:gold_block

execute at @s positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot svm_ep:items/lightning_chestplate
execute at @s positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot svm_ep:chests/colloseum
execute at @s as @e[type=item,distance=..5] run data modify entity @s Glowing set value 1b

execute at @s run playsound minecraft:ui.toast.challenge_complete master @a[distance=..50] ~ ~ ~ 2 1.2
execute at @s run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 1.8 1000
execute at @s run playsound minecraft:entity.firework_rocket.blast master @a[distance=..500] ~ ~ ~ 2 0.8
execute at @s run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..500] ~ ~ ~ 2 0.8


execute at @s positioned ~ ~2 ~ run summon experience_orb ~ ~ ~ {Value:50,Count:5,Health:15,Attributes:[{Name:"max_health",Base:15f}]}
execute at @s positioned ~1 ~2 ~ run summon experience_orb ~ ~ ~ {Value:50,Count:5,Health:15,Attributes:[{Name:"max_health",Base:15f}]}
execute at @s positioned ~ ~2 ~1 run summon experience_orb ~ ~ ~ {Value:50,Count:5,Health:15,Attributes:[{Name:"max_health",Base:15f}]}
execute at @s positioned ~-1 ~2 ~ run summon experience_orb ~ ~ ~ {Value:50,Count:5,Health:15,Attributes:[{Name:"max_health",Base:15f}]}
execute at @s positioned ~ ~2 ~-1 run summon experience_orb ~ ~ ~ {Value:50,Count:5,Health:15,Attributes:[{Name:"max_health",Base:15f}]}

execute at @s run tp @s ~ ~-12 ~ ~ 90

execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.8
execute at @s run particle minecraft:explosion_emitter ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^1 run function svm_ep:power/lightning/1000_lightnings/shoot



kill @s[type=!player]