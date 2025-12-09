execute as @s[tag=svm_ep.power_user] run function svm_ep:power/delete_power
advancement grant @s only svm_ep:storyline/get_power
title @s times 0 20 20

title @s title [{"text":"|","color":"gray"},{"text":" Obtained a Power! ","color":"#F8DA5B"},{"text":"|","color":"gray"}]

title @s subtitle ["",{"text":"|","color":"gray"},{"text":" U","color":"#CFCFCF"},{"text":"nlock a","color":"#DCDCDC"},{"text":"bi","color":"#EAEAEA"},{"text":"l","color":"white"},{"text":"iti","color":"#EAEAEA"},{"text":"es wit","color":"#DCDCDC"},{"text":"h ","color":"#CFCFCF"},{"text":"/","italic":true,"color":"dark_red"},{"text":"trigger svm_ep.menu","italic":true,"color":"red"},{"text":" |","color":"gray"}]

execute at @s run particle minecraft:dust{color:[0f,0f,0f],scale:0.25} ~ ~1 ~ 2.5 2.5 2.5 1 35
execute at @s run particle minecraft:dust{color:[1f,0.9f,0f],scale:0.5f} ~ ~1 ~ 1.5 1.5 1.5 1 15
execute at @s run particle minecraft:dust{color:[18000000f,1f,0f],scale:1f} ~ ~1 ~ 1 1 1 1 10
execute at @s run particle minecraft:dust{color:[18000000f,18000000f,0f],scale:2f} ~ ~1 ~ 0.5 0.5 0.5 1 20



execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~1 ~
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1 50
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 3 40
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 6 30
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 9 20
execute at @s run playsound minecraft:entity.firework_rocket.blast_far master @a[distance=..30] ~ ~ ~ 2 1
execute at @s run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 2 1
#/loot give @s loot svm_ep:items/power_chooser