execute at @s[scores={svm_ep.using_move=1198..}] if predicate svm_ep:holding_ability run return run function svm_ep:power/flora/piercing_vine/charge
execute at @s[scores={svm_ep.using_move=1197}] run function svm_ep:power/flora/piercing_vine/prepare
execute at @s[scores={svm_ep.using_move=1185}] anchored eyes positioned ^ ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shooting
execute at @s[scores={svm_ep.using_move=1185}] anchored eyes positioned ^ ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shoot
execute at @s[scores={svm_ep.using_move=1185}] anchored eyes positioned ^0.7 ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shoot
execute at @s[scores={svm_ep.using_move=1185}] anchored eyes positioned ^-0.7 ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shoot

#execute at @s run tp @n[tag=new] ~ ~ ~
scoreboard players reset @s[scores={svm_ep.using_move=1170}] svm_ep.using_move