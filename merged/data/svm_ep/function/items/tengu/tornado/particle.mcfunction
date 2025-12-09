execute as @s[scores={svm_ep.p.fire_on_fire=1..}] run function svm_ep:power/fire/particle
execute as @s[scores={svm_ep.p.numbers=10}] run particle minecraft:falling_dust{block_state:sand} ~ ~1.5 ~ 0.71 0.71 0.71 0.21 6
particle minecraft:falling_dust{block_state:white_wool} ~ ~ ~ 0.1 0.1 0.1 0.1 1
particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 1

