execute as @s[scores={svm_ep.p.flora_piercing_vine_count=1..}] anchored eyes positioned ^ ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shoot
execute as @s[scores={svm_ep.p.flora_piercing_vine_count=1..}] anchored eyes positioned ^0.7 ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shoot
execute as @s[scores={svm_ep.p.flora_piercing_vine_count=1..}] anchored eyes positioned ^-0.7 ^ ^0.6 run function svm_ep:power/flora/piercing_vine/shoot

execute as @s[scores={svm_ep.p.flora_piercing_vine_count=1..}] run function svm_ep:power/flora/piercing_vine/shoot_extra

effect clear @s slowness
scoreboard players reset @s svm_ep.p.flora_piercing_vine_count