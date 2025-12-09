scoreboard players set @s svm_ep.p.death_unsealed_reaper 4000
scoreboard players reset @s svm_ep.using_move
summon minecraft:lightning_bolt ~ ~7 ~
particle minecraft:smoke ~ ~1 ~ 0.4 0.7 0.4 0.3 500
particle minecraft:raid_omen ~ ~1 ~ 2 2 2 0.25 50
playsound minecraft:entity.wither.spawn master @a[distance=..125] ~ ~ ~ 0.5 0
playsound minecraft:entity.warden.hurt master @a[distance=..125] ~ ~ ~ 0.75 0