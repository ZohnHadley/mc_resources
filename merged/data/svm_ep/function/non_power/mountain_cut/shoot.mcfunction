execute at @s run particle minecraft:explosion_emitter ^ ^ ^2.6
execute at @s run playsound minecraft:entity.wither.death master @a[distance=..20] ~ ~ ~ 1 0
execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.mountain_cut2"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
execute at @s run tp @s ~ ~ ~ ~-90 ~
tp @e[tag=new] @s
execute at @s run tp @s ~ ~ ~ ~90 ~
execute at @s anchored eyes positioned ^ ^ ^0.6 run tp @e[tag=new] ~ ~ ~

tag @e remove new