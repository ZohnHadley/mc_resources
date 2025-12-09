tag @s remove teleport
tag @s add executor
execute summon minecraft:item_display run function svm_ep:power/ice/launch/summon1
tag @s remove executor
playsound minecraft:entity.player.attack.strong master @a[distance=..30] ~ ~ ~ 2 1.5

scoreboard players remove @s svm_ep.mana 15
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.p.ice_ability_05_delay 20