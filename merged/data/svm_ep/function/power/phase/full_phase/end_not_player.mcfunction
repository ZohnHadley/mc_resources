
effect clear @s minecraft:weakness
effect clear @s minecraft:resistance
effect clear @s minecraft:speed
effect clear @s minecraft:invisibility
execute if predicate svm_ep:chance/50_percent on target run tp @n[tag=executor] @s

execute at @s positioned ~ ~0.5 ~ unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.crack","svm_ep.crack_2_33"]}
execute at @s positioned ~ ~1.5 ~ unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.crack","svm_ep.crack_2_33"]}
execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 0.7
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120
scoreboard players add @s svm_ep.p.phase_ability_10_delay 5

scoreboard players reset @s svm_ep.using_move