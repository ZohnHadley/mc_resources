execute if dimension minecraft:the_nether align xyz positioned ~0.5 ~0.5 ~0.5 run return run function svm_ep:power/water/creation/variant/nether

scoreboard players set %add svm_ep.p.water_droplet_size_charge 2

execute as @n[tag=svm_ep.water_droplet,distance=..0.5] if entity @s run return run function svm_ep:power/water/droplet/enlarge
tag @s add executor
execute summon item_display run function svm_ep:power/water/droplet/setup
tag @s remove executor
