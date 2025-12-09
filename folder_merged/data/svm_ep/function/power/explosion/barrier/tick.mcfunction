execute if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.using_move 1
execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..25] ~ ~ ~ 1 1.4
scoreboard players add @s svm_ep.mana_drain 75

execute at @s anchored eyes positioned ^ ^ ^2.4 run function svm_ep:power/explosion/barrier/place
execute at @s unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.mana=..1}] svm_ep.using_move

execute at @s run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 1
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=60..}] run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 1
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=90..}] run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 1
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=120..}] run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 1
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=150..}] run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 1
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=180..}] run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 1

execute at @s run particle minecraft:flame ~ ~0.75 ~ 2 2 2 0.2 5
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=40..}] run particle minecraft:smoke ~ ~0.75 ~ 2 2 2 0.2 3
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=70..}] run particle minecraft:smoke ~ ~0.75 ~ 2 2 2 0.2 3
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=90..}] run particle minecraft:smoke ~ ~0.75 ~ 2 2 2 0.2 3
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=110..}] run particle minecraft:smoke ~ ~0.75 ~ 2 2 2 0.2 3
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=150..}] run particle minecraft:smoke ~ ~0.75 ~ 2 2 2 0.2 3
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=240..}] run particle minecraft:smoke ~ ~0.75 ~ 2 2 2 0.2 4

effect give @s minecraft:resistance 3 0 true
effect give @s[scores={svm_ep.p.explosion_ability_03_delay=120..}] minecraft:resistance 3 1 true
effect give @s[scores={svm_ep.p.explosion_ability_03_delay=240..}] minecraft:resistance 3 2 true
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 2 2 0.035 30
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~0.75 ~ 0 0 0 0.15 20
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=80..}] run particle minecraft:campfire_cosy_smoke ~ ~0.75 ~ 0 0 0 0.25 13
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=120..}] run particle minecraft:campfire_cosy_smoke ~ ~0.75 ~ 0 0 0 0.25 13
execute at @s[scores={svm_ep.p.explosion_ability_03_delay=150..}] run particle minecraft:campfire_cosy_smoke ~ ~0.75 ~ 0 0 0 0.25 13

scoreboard players add @s svm_ep.used_move 3
scoreboard players add @s svm_ep.p.explosion_ability_03_delay 2
execute at @s run scoreboard players add @e[distance=0.01..8] svm_ep.p.explosion_barrier_effect 3
execute at @s run scoreboard players add @e[distance=0.01..6] svm_ep.p.explosion_barrier_effect 1
execute at @s run scoreboard players add @e[distance=0.01..4] svm_ep.p.explosion_barrier_effect 1
execute at @s run scoreboard players add @e[distance=0.01..2] svm_ep.p.explosion_barrier_effect 1
