
execute as @e[type=!#svm_ep:technical,tag=!executor,dx=0] run function svm_ep:power/flora/wet_moss/mob
execute as @e[type=!#svm_ep:technical,tag=!executor,distance=..3] run function svm_ep:power/flora/wet_moss/mob
place feature minecraft:moss_patch_bonemeal
scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 40
scoreboard players set @s svm_ep.p.flora_ability_30_delay 20

place feature minecraft:moss_patch_bonemeal
execute positioned ~ ~.5 ~ run particle minecraft:gust
scoreboard players add @a[distance=..5] svm_ep.shaking 3
particle minecraft:block{block_state:moss_block} ~ ~ ~ 0.5 0.5 0.5 0 50
playsound minecraft:block.moss.break master @a[distance=..25] ~ ~ ~ 1.5 0