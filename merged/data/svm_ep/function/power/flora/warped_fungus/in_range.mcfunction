scoreboard players set @s svm_ep.effect 1

scoreboard players add @s svm_ep.e.warped_fungus 260
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a[distance=..25] ~ ~ ~ 0.1 1.5
execute at @s run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1 0.33