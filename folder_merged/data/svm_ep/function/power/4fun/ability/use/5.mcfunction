scoreboard players set @s svm_ep.using_move 818
scoreboard players remove @s svm_ep.mana 35
scoreboard players set @s[scores={svm_ep.used_move=..600}] svm_ep.used_move 600
scoreboard players add @s[scores={svm_ep.p.phase_awakening_lenght=1..}] svm_ep.using_move 14
item modify entity @s weapon.mainhand svm_ep:update_mainhand
scoreboard players set @s svm_ep.p.phase_ability_05_delay 240