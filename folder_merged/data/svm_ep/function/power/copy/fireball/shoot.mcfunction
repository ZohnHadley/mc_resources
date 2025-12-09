execute anchored eyes positioned ^ ^ ^ summon minecraft:small_fireball run function svm_ep:power/copy/fireball/setup
data modify entity @n[type=minecraft:small_fireball] Onwer set from entity @s UUID
scoreboard players remove @s svm_ep.p.copy_ability_05_count 1
execute anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.blaze.shoot master @a[distance=..75] ~ ~ ~ 0.9 1.1 0.2
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.75 10
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 10