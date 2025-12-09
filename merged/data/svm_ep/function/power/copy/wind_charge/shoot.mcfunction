execute anchored eyes positioned ^ ^ ^ summon minecraft:wind_charge run function svm_ep:power/copy/wind_charge/setup
data modify entity @n[type=minecraft:wind_charge] Onwer set from entity @s UUID

execute anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.breeze.shoot master @a[distance=..75] ~ ~ ~ 0.9 1.1 0.2
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:small_gust ~ ~ ~ 0.2 0.2 0.2 0 5
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:cloud ~ ~ ~ 0 0 0 0.5 10