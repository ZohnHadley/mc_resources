execute at @s summon minecraft:item_display run data merge entity @s {Tags:["svm_ep.lightning_foreshadow","new"],brightness:{sky:15,block:15},item_display:"head"}
tp @e[tag=new] @s
execute as @e[tag=new] at @s run tp @s ~ ~ ~ ~ 0
tag @e remove new