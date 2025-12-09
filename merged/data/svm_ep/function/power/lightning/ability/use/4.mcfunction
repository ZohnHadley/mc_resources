scoreboard players set @s svm_ep.p.lightning_ability_04_delay 20
scoreboard players remove @s svm_ep.mana 5
scoreboard players add @s svm_ep.used_move 150
scoreboard players set @s svm_ep.p.lightning_foreshadowing 40
scoreboard players add @s svm_ep.p.lightning_foreshadowing_stage 1

execute at @s run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1 1 1 0.4 80
execute at @s run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.3

execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1 1 1 0.4 80
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1.1 1.1 1.1 0.4 30
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1.2 1.2 1.2 0.4 30
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1.3 1.3 1.3 0.4 30
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=5..}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1.4 1.4 1.4 0.4 30



execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=1}] run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.1
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=2}] run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.25
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=3}] run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.4
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=4}] run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.55
execute at @s[scores={svm_ep.p.lightning_foreshadowing_stage=5}] run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.7

scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=5}] svm_ep.p.lightning_ability_04_delay 80

execute store result score @s[tag=svm_ep.npc] svm_ep.numbers run random value 1..3
execute if predicate svm_ep:chance/67_percent run scoreboard players reset @s svm_ep.numbers
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Fast right!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=2}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Thunderbolt and lightning!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=3}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Very very frightening!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1..}] run playsound minecraft:entity.evoker.ambient hostile @a[distance=..50] ~ ~1 ~ 4 0.7
