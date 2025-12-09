effect give @s slowness 1 1 true
execute at @s[scores={svm_ep.using_move=1593}] anchored eyes positioned ^ ^-1 ^0.35 run function svm_ep:power/flora/cacti_grenade/w_motion/shoot

scoreboard players reset @s[scores={svm_ep.using_move=1590}] svm_ep.using_move