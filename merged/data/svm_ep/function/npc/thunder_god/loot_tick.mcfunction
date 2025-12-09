scoreboard players add @s svm_ep.lifetime 1

execute at @s run tp @s ~ ~-0.04 ~ ~3 0
execute at @s run tp @s[scores={svm_ep.lifetime=10..}] ~ ~ ~ ~1 0
execute at @s run tp @s[scores={svm_ep.lifetime=20..}] ~ ~ ~ ~2 0
execute at @s run tp @s[scores={svm_ep.lifetime=30..}] ~ ~ ~ ~3 0
execute at @s run tp @s[scores={svm_ep.lifetime=40..}] ~ ~ ~ ~4 0
execute at @s run tp @s[scores={svm_ep.lifetime=50..}] ~ ~ ~ ~5 0
execute at @s run tp @s[scores={svm_ep.lifetime=60..}] ~ ~ ~ ~7 0
execute at @s run tp @s[scores={svm_ep.lifetime=80..}] ~ ~ ~ ~9 0

execute at @s positioned ^ ^ ^3.5 run particle minecraft:dust{color:[0f,0.8f,1f],scale:3f} ~ ~2 ~ 0.1 0.1 0.1 0.3 3
execute at @s positioned ^ ^ ^-3.5 run particle minecraft:dust{color:[0f,0.8f,1f],scale:3f} ~ ~2 ~ 0.1 0.1 0.1 0.3 3
execute at @s positioned ^ ^ ^3.5 run particle minecraft:dust{color:[1f,0.8f,0f],scale:1.5f} ~ ~2 ~ 0.2 0.2 0.2 0.3 3
execute at @s positioned ^ ^ ^-3.5 run particle minecraft:dust{color:[1f,0.8f,0f],scale:1.5f} ~ ~2 ~ 0.2 0.2 0.2 0.3 3


execute at @s[scores={svm_ep.lifetime=1..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.1 1
execute at @s[scores={svm_ep.lifetime=10..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.15 2
execute at @s[scores={svm_ep.lifetime=20..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.2 3
execute at @s[scores={svm_ep.lifetime=30..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.25 3
execute at @s[scores={svm_ep.lifetime=40..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.3 4
execute at @s[scores={svm_ep.lifetime=50..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.35 4
execute at @s[scores={svm_ep.lifetime=20..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.4 5
execute at @s[scores={svm_ep.lifetime=20..}] run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.45 5

execute at @s[scores={svm_ep.lifetime=20..}] run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 0.7 1.2

execute at @s[scores={svm_ep.lifetime=20..}] run particle minecraft:flash{color:0xffffffff} ~ ~2.5 ~

execute at @s[scores={svm_ep.lifetime=1}] run playsound minecraft:entity.ender_dragon.death master @a[distance=..50] ~ ~ ~ 2 1.6
execute as @s[scores={svm_ep.lifetime=5}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"I-","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=5}] at @s run playsound minecraft:entity.evoker.ambient hostile @a[distance=..150] ~ ~1 ~ 4 0.9

execute as @s[scores={svm_ep.lifetime=30}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Did I-","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=30}] at @s run playsound minecraft:entity.evoker.ambient hostile @a[distance=..150] ~ ~1 ~ 4 1.05

execute as @s[scores={svm_ep.lifetime=50}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Have I-","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=50}] at @s run playsound minecraft:entity.evoker.ambient hostile @a[distance=..150] ~ ~1 ~ 4 1.1

execute as @s[scores={svm_ep.lifetime=70}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Lost?","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=70}] at @s run playsound minecraft:entity.evoker.ambient hostile @a[distance=..150] ~ ~1 ~ 4 1.1

execute as @s[scores={svm_ep.lifetime=90}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"NO!","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=90}] at @s run playsound minecraft:entity.evoker.hurt hostile @a[distance=..150] ~ ~1 ~ 4 0.9

execute as @s[scores={svm_ep.lifetime=110}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"IMPOSSIBLE!","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=110}] at @s run playsound minecraft:entity.evoker.hurt hostile @a[distance=..150] ~ ~1 ~ 4 0.9

execute as @s[scores={svm_ep.lifetime=120}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"I DON'T AGREE","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=120}] at @s run playsound minecraft:entity.evoker.hurt hostile @a[distance=..150] ~ ~1 ~ 4 0.95

execute as @s[scores={svm_ep.lifetime=140}] at @s run tellraw @a[distance=..150] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"IT'S NOT OVER YET!","color":"#91FFFF"}]
execute as @s[scores={svm_ep.lifetime=140}] at @s run playsound minecraft:entity.evoker.hurt hostile @a[distance=..150] ~ ~1 ~ 4 1.1

execute as @s[scores={svm_ep.lifetime=140}] at @s run function svm_ep:npc/thunder_god/spawn_loot