particle minecraft:dust{color:[0.4f,0.8f,1f],scale:1.5f} ~ ~ ~ 0.3 0.3 0.3 0 2
particle minecraft:dust{color:[0.25f,0.5f,0.95f],scale:1.25f} ~ ~ ~ 0.35 0.35 0.35 0 3
particle minecraft:dust{color:[0.2f,0.4f,0.9f],scale:1f} ~ ~ ~ 0.4 0.4 0.4 0 3


particle minecraft:bubble_pop ~ ~ ~ 0.25 0.25 0.25 0.05 5
playsound minecraft:item.bucket.empty master @a[distance=..25] ~ ~ ~ 0.5 1.25

#scoreboard players add @s[tag=end_raycast] svm_ep.used_move 30
#scoreboard players set @s[tag=end_raycast] svm_ep.p.fire_ability_01_delay 2
#scoreboard players remove @s[tag=end_raycast] svm_ep.mana 5