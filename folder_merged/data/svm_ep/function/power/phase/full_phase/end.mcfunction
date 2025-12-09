function svm_ep:system/gamemode/set_to_previous
execute at @s positioned ~ ~0.5 ~ unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.crack","svm_ep.crack_2_33"]}
execute at @s positioned ~ ~1.5 ~ unless block ~ ~ ~ #svm_ep:no_physical_hitbox run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.crack","svm_ep.crack_2_33"]}
execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 0.7
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120
scoreboard players add @s svm_ep.p.phase_ability_10_delay 5
scoreboard players reset @s svm_ep.using_move