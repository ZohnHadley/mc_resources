
execute unless entity @p[distance=..45] run return run kill @s
tp @s ^ ^ ^1
execute at @s align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["svm_ep.flora_block_on_cooldown","svm_ep.flora_manipulation_cd.kelp","svm_ep.temporary_marker"],Fire:-40}
#execute at @s run setblock ~ ~ ~ stone
execute at @s unless block ~ ~ ~ #svm_ep:flora_manipulation/launch run return run kill @s

playsound minecraft:block.wet_grass.hit master @a[distance=..15] ~ ~1 ~ 1 1.5 0.5

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
execute at @s align xyz positioned ~-1 ~-1 ~-1 if entity @e[dx=2,dy=2,dz=2,type=!#svm_ep:technical] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/3":1}}}}}
execute at @s align xyz positioned ~-1 ~-1 ~-1 if entity @e[dx=2,dy=2,dz=2,type=!#svm_ep:technical] run kill @s
