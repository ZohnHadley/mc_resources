tag @s remove teleport
tag @s add executor
execute summon minecraft:marker run function svm_ep:power/slime/explosion/summon1
tag @s remove executor

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:slime_block
scoreboard players remove @s svm_ep.mana 20
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.p.slime_ability_05_delay 40
scoreboard players set @s[tag=svm_ep.npc_slime] svm_ep.p.slime_ability_05_delay 120
