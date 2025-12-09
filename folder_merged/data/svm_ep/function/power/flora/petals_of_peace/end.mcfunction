playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.6 2
particle minecraft:cherry_leaves ~ ~1 ~ 2 2 2 0.3 200
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
playsound minecraft:entity.allay.item_taken master @a[distance=..125] ~ ~ ~ 1 0
execute at @s run place feature minecraft:flower_cherry
