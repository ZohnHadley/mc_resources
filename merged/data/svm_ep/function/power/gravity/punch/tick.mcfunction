scoreboard players reset @s[scores={svm_ep.p.gravity_ability_06_delay=..20}] svm_ep.p.gravity_punch
execute at @s[scores={svm_ep.p.gravity_punch=1}] run particle minecraft:dust{color:[0f,0.67f,0f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.gravity_punch=2}] run particle minecraft:dust{color:[0f,0f,0.67f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.gravity_punch=3}] run particle minecraft:dust{color:[0.67f,0f,0f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2
execute at @s[scores={svm_ep.p.gravity_punch=4}] run particle minecraft:dust{color:[0.67f,0f,0.67f],scale:2f} ~ ~0.7 ~ 0.3 0.7 0.3 3 2

scoreboard players set @s svm_ep.check_click 1
effect give @s slowness 1 5 true