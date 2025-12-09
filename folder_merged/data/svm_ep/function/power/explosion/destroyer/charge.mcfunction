#AT RIGHT CLICK
scoreboard players remove @s svm_ep.mana 2
scoreboard players add @s svm_ep.used_move 40

scoreboard players set @s svm_ep.p.explosion_destroyer_uncharge_delay 120
scoreboard players add @s svm_ep.p.explosion_destroyer_charge 1

scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=111}] svm_ep.p.explosion_destroyer_charge 25
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=161}] svm_ep.p.explosion_destroyer_charge 25
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=211}] svm_ep.p.explosion_destroyer_charge 20
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=261}] svm_ep.p.explosion_destroyer_charge 20
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=311}] svm_ep.p.explosion_destroyer_charge 15
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=361}] svm_ep.p.explosion_destroyer_charge 15
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=411}] svm_ep.p.explosion_destroyer_charge 10
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=461}] svm_ep.p.explosion_destroyer_charge 10
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=511}] svm_ep.p.explosion_destroyer_charge 10
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=561}] svm_ep.p.explosion_destroyer_charge 10
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=611}] svm_ep.p.explosion_destroyer_charge 5
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=661}] svm_ep.p.explosion_destroyer_charge 5
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=711}] svm_ep.p.explosion_destroyer_charge 5
scoreboard players add @s[scores={svm_ep.p.explosion_destroyer_charge=761}] svm_ep.p.explosion_destroyer_charge 5


execute as @s[scores={svm_ep.p.explosion_destroyer_charge=150}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=200}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=250}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=300}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=350}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=400}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=450}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=500}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=550}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=600}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=650}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=700}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=750}] run tag @s add charged
execute as @s[scores={svm_ep.p.explosion_destroyer_charge=800}] run tag @s add charged

tag @s[level=..5,scores={svm_ep.p.explosion_destroyer_charge=200..}] add cant
tag @s[level=..10,scores={svm_ep.p.explosion_destroyer_charge=250..}] add cant
tag @s[level=..15,scores={svm_ep.p.explosion_destroyer_charge=300..}] add cant
tag @s[level=..20,scores={svm_ep.p.explosion_destroyer_charge=350..}] add cant
tag @s[level=..25,scores={svm_ep.p.explosion_destroyer_charge=400..}] add cant
tag @s[level=..30,scores={svm_ep.p.explosion_destroyer_charge=450..}] add cant
tag @s[level=..45,scores={svm_ep.p.explosion_destroyer_charge=500..}] add cant
tag @s[level=..50,scores={svm_ep.p.explosion_destroyer_charge=550..}] add cant
tag @s[level=..65,scores={svm_ep.p.explosion_destroyer_charge=600..}] add cant
tag @s[level=..70,scores={svm_ep.p.explosion_destroyer_charge=650..}] add cant
tag @s[level=..85,scores={svm_ep.p.explosion_destroyer_charge=700..}] add cant
tag @s[level=..90,scores={svm_ep.p.explosion_destroyer_charge=750..}] add cant
tag @s[level=..100,scores={svm_ep.p.explosion_destroyer_charge=800..}] add cant
tag @s[level=101..,scores={svm_ep.p.explosion_destroyer_charge=801..}] add max

scoreboard players remove @s[tag=cant] svm_ep.p.explosion_destroyer_charge 1
scoreboard players remove @s[tag=max] svm_ep.p.explosion_destroyer_charge 1

tellraw @s[tag=charged,tag=cant] ["",{"text":"| ","color":"gray"},{"text":"Wa","color":"red"},{"text":"y to","color":"#FF6768"},{"text":"o l","color":"#FF7779"},{"text":"o","color":"#FF8688"},{"text":"w l","color":"#FF9495"},{"text":"e","color":"#FFA6A7"},{"text":"vel! Curr","color":"#FFBDBE"},{"text":"ent c","color":"#FFA6A7"},{"text":"h","color":"#FF9495"},{"text":"a","color":"#FF8688"},{"text":"r","color":"#FF7779"},{"text":"g","color":"#FF6768"},{"text":"e","color":"red"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.p.explosion_destroyer_charge"},"bold":true,"color":"red"}]

tellraw @s[tag=charged,tag=!cant] ["",{"text":"| ","color":"gray"},{"text":"C","color":"red"},{"text":"h","color":"#FF7778"},{"text":"ar","color":"#FF8D8E"},{"text":"g","color":"#FF9B9C"},{"text":"e","color":"#FFAFB0"},{"text":" L","color":"#FF9B9C"},{"text":"ev","color":"#FF8D8E"},{"text":"e","color":"#FF7778"},{"text":"l","color":"red"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.p.explosion_destroyer_charge"},"bold":true,"color":"red"}]
tellraw @s[tag=max] ["",{"text":"| ","color":"gray"},{"text":"R","color":"red"},{"text":"e","color":"#FF7778"},{"text":"ac","color":"#FF8D8E"},{"text":"h","color":"#FF9B9C"},{"text":"e","color":"#FFAFB0"},{"text":"d M","color":"#FF9B9C"},{"text":"ax ","color":"#FF8D8E"},{"text":"rad","color":"#FF7778"},{"text":"ius","color":"red"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.p.explosion_destroyer_charge"},"bold":true,"color":"red"}]
tag @s remove charged
tag @s remove cant
tag @s remove max