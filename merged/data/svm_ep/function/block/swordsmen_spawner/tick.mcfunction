execute at @s unless block ~ ~ ~ barrier run kill @s

execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:1}},distance=..3] run function svm_ep:block/swordsmen_spawner/spawn_weak
execute as @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard",count:1}},distance=..3] run function svm_ep:block/swordsmen_spawner/spawn_normal
execute as @e[type=item,nbt={Item:{id:"minecraft:diamond",count:1}},distance=..3] run function svm_ep:block/swordsmen_spawner/spawn_strong
