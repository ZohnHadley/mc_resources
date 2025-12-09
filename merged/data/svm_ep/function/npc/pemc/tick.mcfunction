execute at @s on attacker run tag @s add attacker
item replace entity @s weapon with air

execute at @s if entity @e[tag=attacker,distance=..3,tag=!svm_ep.phase_user] unless entity @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.p.phase_delay_02=1..}] run function svm_ep:power/phase/ability/use/2



execute at @s on attacker run tag @s remove attacker