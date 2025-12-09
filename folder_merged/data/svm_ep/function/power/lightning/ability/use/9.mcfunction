scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=5..}] svm_ep.using_move 1

execute store result score @s[tag=svm_ep.npc] svm_ep.numbers run random value 1..3

execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=1}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"So long weakling!","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=2}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Flashy huh?","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc,scores={svm_ep.numbers=3}] run tellraw @a[distance=..50] ["",{"text":"[","color":"gray"},{"selector":"@s","bold":true},{"text":"] ","color":"gray"},{"text":"Swift moves right?","color":"#91FFFF"}]
execute at @s[tag=svm_ep.npc] run playsound minecraft:entity.evoker.ambient hostile @a[distance=..20] ~ ~1 ~ 4 0.7

effect give @s resistance 1 100 true
function svm_ep:power/lightning/lightning_place/star
function svm_ep:power/lightning/ability6
scoreboard players set @s svm_ep.p.lightning_ability_06_delay 300
