scoreboard players remove @s sm.fukuma_hitby 1
particle minecraft:sweep_attack ~ ~0.4 ~ 0.35 0.35 0.35 1 3
particle minecraft:sweep_attack ~ ~1 ~ 0.35 0.35 0.35 1 3
particle minecraft:sweep_attack ~ ~1.6 ~ 0.35 0.35 0.35 1 3
playsound minecraft:entity.player.attack.sweep ambient @a ~ ~ ~ 1 1.3
particle minecraft:crit ~ ~0.8 ~ 0.3 0.7 0.3 0.5 30
execute if predicate svm_ep:chance/25_percent run damage @s 8 minecraft:no_cooldown