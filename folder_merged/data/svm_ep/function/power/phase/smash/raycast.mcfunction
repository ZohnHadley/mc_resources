execute at @s run tp @s ^ ^ ^.03 facing entity @e[tag=new32,limit=1,sort=nearest]
execute at @s run particle minecraft:end_rod ~ ~-0.1 ~ 0 0 0 0.01 1

execute at @s if entity @e[tag=new32,distance=..10] unless entity @e[tag=new32,distance=..1] run function svm_ep:power/phase/smash/raycast