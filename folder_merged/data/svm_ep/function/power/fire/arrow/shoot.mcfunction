tag @s add executor
execute summon minecraft:item_display at @s run function svm_ep:power/fire/arrow/setup
playsound minecraft:entity.blaze.death master @a[distance=..50] ~ ~ ~ 1 0 1
playsound minecraft:item.trident.throw master @a[distance=..50] ~ ~ ~ 1 0.68 1
playsound minecraft:entity.firework_rocket.launch master @a[distance=..125] ~ ~ ~ 1.5 0.8
tag @s remove executor
