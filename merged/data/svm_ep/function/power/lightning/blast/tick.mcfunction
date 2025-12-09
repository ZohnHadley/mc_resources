execute at @s[scores={svm_ep.using_move=895..900}] anchored eyes positioned ^ ^ ^1.5 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:0.5f}
execute at @s[scores={svm_ep.using_move=891..894}] anchored eyes positioned ^ ^ ^1.45 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:0.6f}
execute at @s[scores={svm_ep.using_move=887..890}] anchored eyes positioned ^ ^ ^1.4 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:0.7f}
execute at @s[scores={svm_ep.using_move=883..886}] anchored eyes positioned ^ ^ ^1.35 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:0.8f}
execute at @s[scores={svm_ep.using_move=880..882}] anchored eyes positioned ^ ^ ^1.3 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:0.9f}
execute at @s[scores={svm_ep.using_move=875..879}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:1.0f}
execute at @s[scores={svm_ep.using_move=..874}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:dust{color:[0f,18000000f,18000000f],scale:1.75f}


execute at @s[scores={svm_ep.using_move=874}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 4 450
execute at @s[scores={svm_ep.using_move=..874}] anchored eyes positioned ^ ^ ^1.25 run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 15

execute at @s[scores={svm_ep.using_move=..899}] run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 0.6 1.3
execute at @s[scores={svm_ep.using_move=..874}] run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..30] ~ ~ ~ 0.6 1.3
execute at @s[scores={svm_ep.using_move=873..875}] run playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 1 0.8

execute at @s[scores={svm_ep.using_move=874}] run playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..50] ~ ~1 ~ 4 1.6

execute at @s[scores={svm_ep.using_move=..899}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.8 15
execute at @s[scores={svm_ep.using_move=..874}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.2 25

execute at @s[scores={svm_ep.using_move=894..898}] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.7f,0.0f,0.5f],scale:1f} ~ ~.7 ~ 0.8 0.8 0.8 0.4 4
execute at @s[scores={svm_ep.using_move=855}] run function svm_ep:power/lightning/blast/prepare
execute at @s[scores={svm_ep.using_move=845}] run function svm_ep:power/lightning/blast/shoot
