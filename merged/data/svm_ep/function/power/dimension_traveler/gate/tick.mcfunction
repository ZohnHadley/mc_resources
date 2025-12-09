scoreboard players add @s svm_ep.p.dimension_traveler_ability_02_delay 1

execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=1}] run particle minecraft:dust{color:[0f,0.67f,0f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=2}] run particle minecraft:dust{color:[0.67f,0f,0f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=3}] run particle minecraft:dust{color:[0.67f,0f,0.67f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=4}] run particle minecraft:dust{color:[0f,0f,0.67f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=5}] run particle minecraft:dust{color:[18000000f,0.67f,0.67f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2



effect give @s slowness 1 5 true

execute as @s[scores={svm_ep.using_move=..130}] at @s run function svm_ep:power/dimension_traveler/gate/shoot
