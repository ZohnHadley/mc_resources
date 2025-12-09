tag @s add hitby_tick
damage @s 6 svm_ep:bypass_cooldown by @e[tag=executor,limit=1,sort=nearest]

effect give @s minecraft:weakness 3 6 true
effect give @s minecraft:slowness 3 2 true
execute at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..15] ~ ~ ~ 1 0.8
execute at @s run particle minecraft:glow_squid_ink ~ ~0.7 ~ 0.3 0.3 0.3 1 105
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.3 0.3 2 25
execute at @s run particle minecraft:sweep_attack ~ ~1.3 ~ 0.15 0.09 0.15 0 2
execute at @s run playsound minecraft:entity.player.attack.sweep ambient @a[distance=..40] ~ ~ ~ 2 1.7