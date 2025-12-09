scoreboard players add @s svm_ep.p.copy_ability_01_delay 1
execute as @s[scores={svm_ep.using_move=2}] at @s run function svm_ep:power/copy/copy/end
scoreboard players set @s svm_ep.attack_entity_action 1
