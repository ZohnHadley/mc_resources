scoreboard players set @e[distance=0.1..5] svm_ep.clear_levitation 11
effect give @e[distance=0.1..5] minecraft:levitation 1 22 true

execute at @e[distance=0.1..5,type=!#svm_ep:technical] run function svm_ep:system/poof

execute at @s run scoreboard players add @a[distance=..13] svm_ep.shaking 5
execute at @e[distance=0.1..5,type=!#svm_ep:technical] run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 1 1
execute at @e[distance=0.1..5,type=!#svm_ep:technical] run playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 0
execute at @e[distance=0.1..5,type=!#svm_ep:technical] run particle minecraft:item{item:feather} ~ ~1 ~ 0.5 1 0.5 0.2 50
particle minecraft:item{item:feather} ~ ~1 ~ 0 0 0 1.2 50
playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 0
tag @s add executor
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather
execute at @s summon item_display run function svm_ep:power/harpie/lift/setup_feather

tag @s remove executor

scoreboard players remove @s svm_ep.mana 60
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.p.harpie_ability_04_delay 320