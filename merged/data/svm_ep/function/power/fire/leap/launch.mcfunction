execute at @s[scores={svm_ep.using_move=790..800}] anchored eyes positioned ~ ~1 ~ run summon minecraft:creeper ^ ^ ^-0.5 {ExplosionRadius:-3,Fuse:0}
execute at @s[scores={svm_ep.using_move=780..789}] anchored eyes positioned ~ ~1 ~ run summon minecraft:creeper ^ ^ ^-0.5 {ExplosionRadius:-2,Fuse:0}
execute at @s[scores={svm_ep.using_move=..779}] anchored eyes positioned ~ ~1 ~ run summon minecraft:creeper ^ ^ ^-0.5 {ExplosionRadius:-1,Fuse:0}


execute at @s[scores={svm_ep.using_move=..701}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0
execute at @s[scores={svm_ep.using_move=..733}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.5
execute at @s[scores={svm_ep.using_move=..766}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.75 1
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 2

execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^-0.5 0 0 0 0.9 30
execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^-0.5 0 0 0 0.6 20
execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^-0.5 0 0 0 0.3 10
execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:flame ^ ^ ^-0.5 0 0 0 0.1 5
execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:dust{color:[18000000f,0.75f,0.2f],scale:2f} ^ ^ ^-0.5 1 1 1 0 10
execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:dust{color:[18000000f,0.5f,0.2f],scale:2f} ^ ^ ^-0.5 2 1 2 0 10
execute at @s anchored eyes positioned ~ ~1 ~ run particle minecraft:dust{color:[18000000f,0.25f,0.2f],scale:2f} ^ ^ ^-0.5 3 1 3 0 10


execute at @s run scoreboard players add @a[distance=..8] svm_ep.shaking 4
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 1 1.3

scoreboard players reset @s svm_ep.using_move