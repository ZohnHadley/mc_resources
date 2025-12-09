playsound minecraft:entity.ender_eye.death master @a[distance=..125] ~ ~ ~ 0.1 0.7 0.14
particle minecraft:explosion ~ ~ ~ 2 2 2 0 4
playsound minecraft:entity.generic.explode master @a[distance=..125] ~ ~ ~ 0.3 1.2 0.1
particle minecraft:end_rod ~ ~ ~ 2 2 2 0.8 5 force @a[distance=..125]
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.4 10 force @a[distance=..125]
particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 30 force @a[distance=..125]
particle minecraft:portal ~ ~ ~ 0.1 0.1 0.1 0.8 15 force @a[distance=..125]
scoreboard players add @a[distance=..50] svm_ep.shaking 2