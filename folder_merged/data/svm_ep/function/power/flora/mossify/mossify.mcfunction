execute if block ~ ~ ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:moss_block
execute if block ~ ~ ~ minecraft:dirt if block ~ ~1 ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ minecraft:grass_block

execute if block ~ ~ ~ minecraft:mossy_cobblestone run setblock ~ ~ ~ minecraft:moss_block
execute if block ~ ~ ~ minecraft:moss_block positioned ~1 ~ ~ if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:moss_block positioned ~-1 ~ ~ if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:moss_block positioned ~ ~1 ~ if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:moss_block positioned ~ ~-1 ~ if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:moss_block positioned ~ ~ ~1 if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ minecraft:moss_block positioned ~ ~ ~-1 if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
execute if block ~ ~ ~ #svm_ep:replace_to_mossy_cobblestone run setblock ~ ~ ~ minecraft:mossy_cobblestone
particle minecraft:happy_villager ~ ~0.5 ~ 1.2 1.2 1.2 0 2
playsound minecraft:block.moss.place master @a[distance=..20] ~ ~ ~ 2 0