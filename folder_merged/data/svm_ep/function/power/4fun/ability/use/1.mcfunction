scoreboard players remove @s svm_ep.mana 100
scoreboard players add @s svm_ep.used_move 100
scoreboard players set @s[scores={svm_ep.used_move=..500}] svm_ep.used_move 500
scoreboard players set @s svm_ep.p.4fun_ability_01_delay 180

effect give @e[distance=..25] minecraft:slowness 2 10 true
effect give @e[distance=..25] minecraft:weakness 2 10 true
effect give @e[distance=..25] minecraft:darkness 5 0 true
scoreboard players set @s svm_ep.using_move 500
execute at @s run playsound minecraft:block.bell.use master @a[distance=..60] ~ ~ ~ 2 0.78
