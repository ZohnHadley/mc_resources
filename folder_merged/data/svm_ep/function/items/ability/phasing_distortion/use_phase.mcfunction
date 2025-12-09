particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:4} ~ ~ ~ 1.8 1.3 1.8 0 150
particle minecraft:dust{color:[0.9f,0.9f,0.9f],scale:3} ~ ~ ~ 1.7 1.35 1.7 0 50
particle minecraft:cloud ~ ~ ~ 0 0 0 0.75 80
particle minecraft:poof ~ ~ ~ 0 0 0 0.45 60
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.45 60
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0.25 80

tag @s add executor
execute as @s[scores={svm_ep.p.phase_awakening_lenght=1..}] run effect give @e[tag=!executor,type=!#svm_ep:technical,distance=0.1..4] minecraft:glowing 2 0 true
tag @s remove executor
