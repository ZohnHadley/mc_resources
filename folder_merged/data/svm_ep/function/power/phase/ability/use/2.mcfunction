scoreboard players set @s svm_ep.using_move 211
scoreboard players set @s[scores={svm_ep.p.phase_awakening_lenght=1..}] svm_ep.using_move 220
item modify entity @s weapon.offhand svm_ep:update_offhand
scoreboard players remove @s svm_ep.mana 10
scoreboard players set @s[scores={svm_ep.used_move=..500}] svm_ep.used_move 500

scoreboard players set @s svm_ep.p.phase_ability_02_delay 30