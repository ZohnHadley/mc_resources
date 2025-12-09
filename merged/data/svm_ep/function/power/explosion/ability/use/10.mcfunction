scoreboard players remove @s svm_ep.mana 250
scoreboard players add @s svm_ep.used_move 30
scoreboard players set @s svm_ep.p.explosion_ability_10_delay 6000
execute at @s anchored eyes run function svm_ep:power/explosion/destroyer/raycast
scoreboard players set @s svm_ep.p.explosion_destroyer_uncharge_delay 120
scoreboard players set @s svm_ep.p.explosion_destroyer_charge 100
