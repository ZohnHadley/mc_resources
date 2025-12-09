damage @s 1 minecraft:wither
effect give @s minecraft:slowness 1 3 true
execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:damage_indicator ~ ~ ~ 0.4 0.2 0.4 0 1
scoreboard players add %mobs_in_radius svm_ep.numbers 1