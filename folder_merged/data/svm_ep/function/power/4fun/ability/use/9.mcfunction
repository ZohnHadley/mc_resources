scoreboard players set @s svm_ep.using_move 1260



scoreboard players add @s svm_ep.used_move 290

scoreboard players remove @s svm_ep.mana 40

scoreboard players set @s svm_ep.p.phase_ability_09_delay 160

scoreboard players set @s[scores={svm_ep.p.phase_awakening_lenght=1..}] svm_ep.p.phase_ability_09_delay 120

execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 0.7
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120