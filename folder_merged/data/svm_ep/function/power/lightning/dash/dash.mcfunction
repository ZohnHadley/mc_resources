
tag @s add executor
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~ 0.7 0.7 0.7 0.4 3
function svm_ep:power/lightning/dash/raycast
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~ 0.7 0.7 0.7 0.4 3
execute at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..30] ~ ~ ~ 2.5 1.4
tag @e remove hitby_tick
tag @s remove executor
tag @s remove end_raycast
execute at @s run playsound minecraft:item.trident.thunder ambient @a[distance=..30] ~ ~ ~ 2 0.7
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness