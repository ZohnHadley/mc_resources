scoreboard players set @s svm_ep.using_move 1119
scoreboard players remove @s svm_ep.mana 20
scoreboard players set @s[scores={svm_ep.used_move=..400}] svm_ep.used_move 400

effect give @s minecraft:levitation 1 20 true 
item modify entity @s weapon.mainhand svm_ep:update_mainhand
scoreboard players set @s svm_ep.p.phase_ability_06_delay 80
scoreboard players set @s[tag=svm_ep.npc_calcite_guard] svm_ep.p.phase_ability_06_delay 210
execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 0.7
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120