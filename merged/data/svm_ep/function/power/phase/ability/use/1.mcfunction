scoreboard players set @s svm_ep.using_move 17
scoreboard players remove @s svm_ep.mana 25
scoreboard players set @s[scores={svm_ep.used_move=..500}] svm_ep.used_move 500
scoreboard players set @s[scores={svm_ep.p.phase_awakening_lenght=1..}] svm_ep.using_move 30
item modify entity @s weapon.mainhand svm_ep:update_mainhand
scoreboard players set @s svm_ep.p.phase_ability_01_delay 180