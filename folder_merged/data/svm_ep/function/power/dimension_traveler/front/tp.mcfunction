tag @s remove executor2
scoreboard players set @s svm_ep.p.dimension_front_delay 60
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.5 ~
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1.5 50
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..40] ~ ~ ~ 1 2

execute at @e[tag=svm_ep.dimension_front_display,distance=0.5..150,limit=1,sort=nearest] run tp @s ~ ~ ~
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.5 ~
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0 0 0 1.5 50
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..40] ~ ~ ~ 1 0
execute as @e[tag=svm_ep.dimension_front_display,distance=..1,limit=1,sort=nearest] if entity @s[tag=svm_ep.dimension_front_red] at @s as @e[tag=executor2] anchored eyes run tp @s ~ ~-1 ~
scoreboard players add @s[tag=svm_ep.dimension_traveler_user] svm_ep.p.dimension_traveler_ability_04_delay 25

tag @s remove executor2