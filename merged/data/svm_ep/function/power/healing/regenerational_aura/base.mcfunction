
function svm_ep:power/healing/regenerational_aura/ring_more_points
scoreboard players reset @s svm_ep.using_move
execute as @e[type=!#svm_ep:technical,distance=..5.5] at @s run function svm_ep:power/healing/regenerational_aura/give_effect_base
particle minecraft:dust{color:[18000000f,0.1f,0.45f],scale:1.5f} ~ ~0.2 ~ 2.75 0.1 2.75 0 200
particle minecraft:dust{color:[18000000f,0.1f,0.45f],scale:.5f} ~ ~0.2 ~ 2.75 2.75 2.75 0 100
particle minecraft:heart ~ ~2 ~ 2 1 2 0 30

scoreboard players add @s svm_ep.p.healing_ability_02_delay 400