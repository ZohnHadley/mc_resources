scoreboard players set @s svm_ep.using_move 700


execute store result score @s[tag=svm_ep.npc] svm_ep.numbers run random value 1..3

execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"You think that's all I got?","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=2}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Prepare for doom!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=3}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"You better call your mommy!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc] run playsound minecraft:entity.evoker.ambient hostile @a[distance=..50] ~ ~1 ~ 4 0.6

execute at @s run playsound minecraft:entity.wither.ambient hostile @a[distance=..50] ~ ~1 ~ 2 0.65
execute at @s run playsound minecraft:entity.wither.spawn hostile @a[distance=..50] ~ ~1 ~ 2 0.65
execute at @s run summon minecraft:lightning_bolt ~ ~ ~
execute at @s run summon minecraft:lightning_bolt ~ ~1 ~
execute at @s run summon minecraft:lightning_bolt ~ ~2 ~
execute at @s run summon minecraft:lightning_bolt ~ ~3 ~
execute at @s run summon minecraft:lightning_bolt ~ ~4 ~
execute at @s run summon minecraft:lightning_bolt ~ ~5 ~
execute at @s run summon minecraft:lightning_bolt ~ ~6 ~
execute at @s run summon minecraft:lightning_bolt ~ ~7 ~
execute at @s run summon minecraft:lightning_bolt ~ ~8 ~

tag @s add svm_ep.awakened