execute if block ~ ~ ~ minecraft:water run particle minecraft:bubble_pop ~ ~ ~ 0.06 0.06 0.06 0.1 3
execute unless entity @s[scores={svm_ep.sword_particle=0..}] run return run function svm_ep:items/sword_particle/default


execute as @s[scores={svm_ep.sword_particle=59}] run particle minecraft:dust{color:[1f,0f,1f],scale:0.8f} ~ ~ ~ 0.04 0.04 0.04 0 5
execute as @s[scores={svm_ep.sword_particle=60}] run function svm_ep:power/flora/water_particle


execute as @s[scores={svm_ep.sword_particle=1}] run function svm_ep:power/phase/phase_particle
execute as @s[scores={svm_ep.sword_particle=2}] run function svm_ep:power/lightning/lightning_particle
execute as @s[scores={svm_ep.sword_particle=3}] run function svm_ep:power/flora/flora_particle
execute as @s[scores={svm_ep.sword_particle=4}] run function svm_ep:power/slime/slime_particle
execute as @s[scores={svm_ep.sword_particle=5}] run function svm_ep:power/explosion/particle
execute as @s[scores={svm_ep.sword_particle=6}] run function svm_ep:power/ice/particle
execute as @s[scores={svm_ep.sword_particle=7}] run function svm_ep:power/gravity/particle
execute as @s[scores={svm_ep.sword_particle=8}] run function svm_ep:power/harpie/particle
execute as @s[scores={svm_ep.sword_particle=9}] run function svm_ep:power/dimension_traveler/particle
execute as @s[scores={svm_ep.sword_particle=10}] run function svm_ep:power/explosion/fire_particle
execute as @s[scores={svm_ep.sword_particle=11}] run function svm_ep:power/void/particle
execute as @s[scores={svm_ep.sword_particle=12}] run function svm_ep:power/time/particle

