scoreboard players set @s svm_ep.using_move 800
scoreboard players set @s svm_ep.p.lightning_ability_09_delay 260

execute store result score @s[tag=svm_ep.npc] svm_ep.numbers run random value 1..3

execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Running away huh?","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=2}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"You won't get away!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=3}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Watch out coward!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc] run playsound minecraft:entity.evoker.ambient hostile @a[distance=..50] ~ ~1 ~ 4 0.7

execute at @s run playsound minecraft:entity.wither.ambient hostile @a[distance=..50] ~ ~1 ~ 2 1.65
execute at @s run summon minecraft:lightning_bolt ~ ~ ~