execute anchored eyes positioned ^ ^ ^ summon minecraft:wither_skull run function svm_ep:power/copy/wither_head/setup
data modify entity @n[type=minecraft:wither_skull] Onwer set from entity @s UUID

execute anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.wither.shoot master @a[distance=..75] ~ ~ ~ 0.9 1.1 0.2
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:ash ~ ~ ~ 0.2 0.2 0.2 0 5
