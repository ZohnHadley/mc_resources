execute if block ~ ~ ~ water run return run particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0.05 5
execute as @s[tag=svm_ep.water_droplet_from_water] run return run function svm_ep:power/water/droplet/display/from_water
execute unless entity @s[scores={svm_ep.p.water_droplet_size=1..}] run return run function svm_ep:power/water/droplet/display/0
execute as @s[scores={svm_ep.p.water_droplet_size=1}] run return run function svm_ep:power/water/droplet/display/1
execute as @s[scores={svm_ep.p.water_droplet_size=2}] run return run function svm_ep:power/water/droplet/display/2
execute as @s[scores={svm_ep.p.water_droplet_size=3}] run return run function svm_ep:power/water/droplet/display/3
execute as @s[scores={svm_ep.p.water_droplet_size=4}] run return run function svm_ep:power/water/droplet/display/4
execute as @s[scores={svm_ep.p.water_droplet_size=5}] run return run function svm_ep:power/water/droplet/display/5
execute as @s[scores={svm_ep.p.water_droplet_size=6}] run return run function svm_ep:power/water/droplet/display/6
execute as @s[scores={svm_ep.p.water_droplet_size=7}] run return run function svm_ep:power/water/droplet/display/7
execute as @s[scores={svm_ep.p.water_droplet_size=8}] run return run function svm_ep:power/water/droplet/display/8
execute as @s[scores={svm_ep.p.water_droplet_size=9..}] run return run function svm_ep:power/water/droplet/display/9
