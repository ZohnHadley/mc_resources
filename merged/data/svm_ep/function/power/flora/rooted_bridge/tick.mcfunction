execute at @s run tp @s[scores={svm_ep.using_move=101..}]

effect give @s[scores={svm_ep.using_move=198..}] minecraft:slowness 1 4 true

execute at @s[scores={svm_ep.using_move=187..}] run playsound minecraft:block.vine.break master @a[distance=..30] ~ ~ ~ 1 0

execute at @s[scores={svm_ep.using_move=184..}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1
execute at @s[scores={svm_ep.using_move=197..}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1
execute at @s[scores={svm_ep.using_move=194..}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1
execute at @s[scores={svm_ep.using_move=191..}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1
execute at @s[scores={svm_ep.using_move=187..}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 1

execute at @s[scores={svm_ep.using_move=..200}] anchored eyes positioned ^ ^ ^4.5 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..199}] anchored eyes positioned ^ ^ ^4.25 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..198}] anchored eyes positioned ^ ^ ^4 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..197}] anchored eyes positioned ^ ^ ^3.75 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..196}] anchored eyes positioned ^ ^ ^3.5 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..195}] anchored eyes positioned ^ ^ ^3.25 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..194}] anchored eyes positioned ^ ^ ^3 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..193}] anchored eyes positioned ^ ^ ^2.75 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..192}] anchored eyes positioned ^ ^ ^2.5 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..191}] anchored eyes positioned ^ ^ ^2.25 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..190}] anchored eyes positioned ^ ^ ^1.75 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..189}] anchored eyes positioned ^ ^ ^1.5 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..188}] anchored eyes positioned ^ ^ ^1.25 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..187}] anchored eyes positioned ^ ^ ^1 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..186}] anchored eyes positioned ^ ^ ^0.75 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..185}] anchored eyes positioned ^ ^ ^0.5 run function svm_ep:power/flora/flora_particle
execute at @s[scores={svm_ep.using_move=..184}] anchored eyes positioned ^ ^ ^0.25 run function svm_ep:power/flora/flora_particle


execute at @s[scores={svm_ep.using_move=180}] anchored eyes positioned ^ ^ ^0.5 run function svm_ep:power/flora/rooted_bridge/shoot
scoreboard players reset @s[scores={svm_ep.using_move=180}] svm_ep.using_move
