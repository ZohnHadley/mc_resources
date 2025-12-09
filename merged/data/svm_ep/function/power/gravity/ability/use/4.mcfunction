#TELEPORT
scoreboard players remove @s svm_ep.mana 40
scoreboard players add @s svm_ep.used_move 60
scoreboard players set @s svm_ep.p.gravity_ability_04_delay 40
scoreboard players set @s[type=!player] svm_ep.p.gravity_ability_04_delay 240

tag @s add executor
scoreboard players reset @s svm_ep.numbers
execute anchored eyes positioned ^ ^0.1 ^0.4 run function svm_ep:power/gravity/teleport/raycast
tag @s remove executor
scoreboard players reset @s svm_ep.numbers