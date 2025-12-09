execute unless block ~ ~ ~ #svm_ep:flora_temporary run return 0

execute store result entity @s Rotation[0] int 1.0 run random value 0..359
execute store result entity @s Rotation[1] int 1.0 run random value -90..90


particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.4 3
playsound minecraft:block.wood.break master @a[distance=..45] ~ ~ ~ 0.4 0.9 0.3
playsound minecraft:entity.breeze.shoot master @a[distance=..45] ~ ~ ~ 0.15 1.3 0.3

loot replace entity @s contents mine ~ ~ ~ minecraft:diamond_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
setblock ~ ~ ~ air
scoreboard players reset @s svm_ep.kill_after 
scoreboard players reset @s svm_ep.kill_after_function
scoreboard players set @s svm_ep.projectile_type 2
scoreboard players set @s svm_ep.projectile 2
data modify entity @s teleport_duration set value 1
