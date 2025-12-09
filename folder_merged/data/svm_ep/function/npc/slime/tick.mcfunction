tag @s add executor

execute on target at @s as @e[tag=executor] unless score @s svm_ep.p.slime_ability_01_delay matches 1.. if entity @s[distance=..8.5] run function svm_ep:power/slime/ability/use/1
execute on target at @s as @e[tag=executor] unless score @s svm_ep.p.slime_ability_05_delay matches 1.. if entity @s[distance=..3] run function svm_ep:power/slime/explosion/summon0
execute on target at @s as @e[tag=executor] unless score @s svm_ep.p.slime_ability_02_delay matches 1.. if entity @s[distance=3..5] run function svm_ep:power/slime/ability/use/2

effect give @s minecraft:regeneration infinite 2 true
effect give @s minecraft:resistance infinite 1 true
effect give @s minecraft:strength infinite 1 true
execute at @s run particle minecraft:sneeze ~ ~0.6 ~ 0.5 0.5 0.5 0.05 3

tag @s remove executor