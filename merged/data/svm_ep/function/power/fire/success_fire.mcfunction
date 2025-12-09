particle minecraft:dust{color:[18000000f,0.64f,0f],scale:2.1f} ~ ~ ~ 0.24 0.24 0.24 0 5
particle minecraft:dust{color:[18000000f,0.24f,0f],scale:2.3f} ~ ~ ~ 0.34 0.34 0.34 0 5
particle minecraft:dust{color:[1f,0.04f,0f],scale:2.7f} ~ ~ ~ 0.44 0.44 0.44 0 5

particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 1.3 5
particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.07 6
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0.1 5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.25
#scoreboard players add @s[tag=end_raycast] svm_ep.used_move 30
#scoreboard players set @s[tag=end_raycast] svm_ep.p.fire_ability_01_delay 2
#scoreboard players remove @s[tag=end_raycast] svm_ep.mana 5