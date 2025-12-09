
scoreboard players add @s svm_ep.used_move 185
scoreboard players set @s svm_ep.using_move 101500

scoreboard players set @s[scores={svm_ep.used_move=..800}] svm_ep.used_move 800

function svm_ep:system/macro/command {command:"emotes play hollow_technique_purple"}