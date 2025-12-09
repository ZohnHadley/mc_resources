scoreboard players remove @s svm_ep.mana 50
scoreboard players add @s svm_ep.used_move 200
scoreboard players set @s[scores={svm_ep.used_move=..300}] svm_ep.used_move 300
scoreboard players set @s svm_ep.non_power.ability_9996_delay 580
scoreboard players add %METEOR_RAIN svm_ep.world_settings 512
scoreboard players set @s[scores={svm_ep.used_non_power_ability=..700}] svm_ep.used_non_power_ability 700
effect give @e[distance=..25] minecraft:slowness 2 10 true
scoreboard players set @s svm_ep.using_move 100900
execute at @s run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 1 0 1
