tag @s add executor

execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=1}] run function svm_ep:power/dimension_traveler/gate/particle1
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=2}] run function svm_ep:power/dimension_traveler/gate/particle2
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=3}] run function svm_ep:power/dimension_traveler/gate/particle3
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=4}] run function svm_ep:power/dimension_traveler/gate/particle4
execute at @s[scores={svm_ep.p.dimension_traveler_gate_destination=5}] run function svm_ep:power/dimension_traveler/gate/particle5


execute at @s run particle minecraft:dust{color:[0.1f,0f,0.1f],scale:1.5f} ~ ~0.8 ~ 2.52 2.52 2.52 3 8
execute at @s run particle minecraft:dust{color:[0.2f,0f,0.2f],scale:1.5f} ~ ~0.8 ~ 1.52 1.52 1.52 3 5



execute at @s as @e[dx=2,type=!#svm_ep:technical] run tag @s add tp
execute at @s as @e[distance=..1.5,type=!#svm_ep:technical] run tag @s add tp
execute at @s as @e[distance=..3.5,scores={svm_ep.projectile=-100..}] run tag @s add tp
execute as @e[tag=tp] at @s run function svm_ep:power/dimension_traveler/gate/tp
execute at @s positioned ~ ~1 ~ if predicate svm_ep:chance/5_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute at @s positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run particle minecraft:end_rod ~ ~ ~ 0 0 0 4 1

#execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
execute as @s[scores={svm_ep.lifetime=230..}] if predicate svm_ep:chance/50_percent run scoreboard players add @a[distance=..15] svm_ep.shaking 1
execute as @s[scores={svm_ep.lifetime=250..}] if predicate svm_ep:chance/50_percent run scoreboard players add @a[distance=..15] svm_ep.shaking 1
execute as @s[scores={svm_ep.lifetime=270..}] if predicate svm_ep:chance/50_percent run scoreboard players add @a[distance=..15] svm_ep.shaking 1
execute as @s[scores={svm_ep.lifetime=290..}] if predicate svm_ep:chance/50_percent run scoreboard players add @a[distance=..15] svm_ep.shaking 1

execute as @s[scores={svm_ep.lifetime=230..}] positioned ~ ~1 ~ if predicate svm_ep:chance/20_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute as @s[scores={svm_ep.lifetime=250..}] positioned ~ ~1 ~ if predicate svm_ep:chance/20_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute as @s[scores={svm_ep.lifetime=270..}] positioned ~ ~1 ~ if predicate svm_ep:chance/20_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute as @s[scores={svm_ep.lifetime=290..}] positioned ~ ~1 ~ if predicate svm_ep:chance/20_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot

tag @a remove immune
execute as @s[scores={svm_ep.lifetime=300}] run function svm_ep:power/dimension_traveler/gate/boom

