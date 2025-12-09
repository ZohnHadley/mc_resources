scoreboard players remove @s svm_ep.p.death_unsealed_reaper 1
particle minecraft:raid_omen ~ ~1 ~ 2 2 2 0.02 2
particle minecraft:smoke ~ ~1 ~ 0.4 0.7 0.4 0.1 2
particle minecraft:dust{color:[0.2f,0.1f,0.1f],scale:2} ~ ~0.1 ~ 0.8 .3 0.8 0.3 2
particle minecraft:dust{color:[0.1f,0.05f,0.05f],scale:2} ~ ~0.8 ~ 0.8 1.3 0.8 0.3 2

effect give @s minecraft:strength 1 1 true
effect give @s minecraft:speed 1 2 true
effect give @a[distance=..50] minecraft:darkness 1 2 true
effect give @a[distance=0.1..15] minecraft:darkness 10 3 true
effect give @e[distance=0.1..25] minecraft:weakness 2 1 true
