scoreboard players add @s svm_ep.used_move 30
scoreboard players set @s svm_ep.p.fire_ability_01_delay 20
scoreboard players remove @s svm_ep.mana 10

particle minecraft:flame ~ ~ ~ 0.35 0.35 0.35 0.1 100
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.6 0.5
playsound minecraft:block.blastfurnace.fire_crackle master @a ~ ~ ~ 2 2
playsound minecraft:block.blastfurnace.fire_crackle master @a ~ ~ ~ 2 1
playsound minecraft:block.blastfurnace.fire_crackle master @a ~ ~ ~ 2 0
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.1 75
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.01 25

particle minecraft:dust{color:[18000000f,0.64f,0f],scale:2.5f} ~ ~ ~ 0.24 0.24 0.24 0 3
particle minecraft:dust{color:[18000000f,0.14f,0f],scale:2.3f} ~ ~ ~ 0.54 0.54 0.54 0 5
particle minecraft:dust{color:[1f,0.04f,0f],scale:1.7f} ~ ~ ~ 0.74 0.74 0.74 0 7
