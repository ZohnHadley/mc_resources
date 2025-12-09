summon zombified_piglin ~ ~ ~ {IsBaby:1,Health:1,NoAI:1b,PersistenceRequired:1b,Silent:1b,Tags:["svm_ep.block_8t","svm_ep.cherry_katana"],ArmorItems:[{},{},{},{id:cooked_beef,Count:1}],ArmorDropChances:[0f,0f,0f,1f],Attributes:[{Name:"max_health",Base:1f}]}
loot replace entity @n[tag=svm_ep.cherry_katana] armor.head loot svm_ep:items/cherry_katana
effect give @n[tag=svm_ep.cherry_katana] minecraft:invisibility infinite 0 true
execute as @n[tag=svm_ep.cherry_katana] run data modify entity @s ArmorDropChances set value [0f,0f,0f,1f]
execute at @s run playsound minecraft:block.wood.place master @a[distance=..20] ~ ~ ~ 2 0.7
execute at @s unless block ~ ~ ~ minecraft:smooth_stone_slab run setblock ~ ~ ~ air
execute at @s run setblock ~ ~1 ~ air
