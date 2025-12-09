scoreboard players set @s svm_ep.numbers 0
execute store result score @s svm_ep.numbers run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace fire
execute as @s[scores={svm_ep.numbers=1..}] run particle minecraft:smoke ~ ~ ~ 1.5 1.5 1.5 0.25 50
execute as @s[scores={svm_ep.numbers=1..}] run playsound minecraft:block.fire.extinguish master @a[distance=..20] ~ ~ ~ 0.25 0.3
scoreboard players operation @s svm_ep.numbers /= %fire_extinguish_cost_divisor svm_ep.world_settings
scoreboard players operation @s svm_ep.mana -= @s svm_ep.numbers
execute as @s[scores={svm_ep.mana=..0}] run scoreboard players set @s svm_ep.mana 0
execute as @s[scores={svm_ep.mana=..0}] run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @e[distance=..5] svm_ep.p.fire_on_fire
execute as @e[distance=..5] run function svm_ep:system/get_fire
execute as @e[scores={fire=1..},distance=..5] run function svm_ep:system/extinguish