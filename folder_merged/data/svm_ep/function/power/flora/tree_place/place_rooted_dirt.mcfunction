


execute if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ minecraft:rooted_dirt
execute unless block ~ ~ ~ #svm_ep:indestructable run setblock ~ ~ ~ minecraft:rooted_dirt
execute if block ~ ~-1 ~ #svm_ep:no_physical_hitbox if block ~ ~ ~ minecraft:rooted_dirt run setblock ~ ~-1 ~ minecraft:hanging_roots

execute if block ~ ~ ~ minecraft:rooted_dirt if block ~ ~-1 ~ minecraft:hanging_roots if dimension minecraft:the_nether run setblock ~ ~-1 ~ minecraft:weeping_vines
execute if block ~ ~ ~ minecraft:rooted_dirt if dimension minecraft:the_nether run setblock ~ ~ ~ minecraft:netherrack

