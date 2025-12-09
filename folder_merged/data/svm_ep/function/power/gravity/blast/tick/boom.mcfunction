particle minecraft:explosion ~ ~ ~ 2 2 2 0 10
particle minecraft:end_rod ~ ~ ~ 0 0 0 2 40
execute as @a[distance=..40] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0 1
execute unless score doBlocksDestroy svm_ep.gamerule matches 0 run summon tnt ~ ~ ~ {fuse:0s}