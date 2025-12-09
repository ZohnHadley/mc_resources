tag @s add executor2
execute as @e[tag=svm_ep.dimension_front_display,sort=nearest,limit=1] if entity @s[tag=!svm_ep.dimension_front_red] run tag @e[tag=executor2] add svm_ep.dimension_front_red 
tag @s remove executor2
tp @s ~0.5 ~0.5 ~0.5
tag @s add svm_ep.dimension_front_display
data merge entity @s {transformation:{scale:[0f,0f,0f]}}
execute at @s unless block ~ ~-15 ~ #svm_ep:no_physical_hitbox run tp @s ~ ~-0.5 ~
execute at @s if block ~ ~-1 ~ #svm_ep:no_physical_hitbox run tp @s ~ ~0.5 ~

execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~ ~
data merge entity @s {interpolation_duration:1,start_interpolation:-1}
execute at @s run playsound minecraft:block.portal.ambient master @a ~ ~ ~ 2 0.76
execute at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 2 2
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.8 30
execute at @s run playsound minecraft:block.amethyst_cluster.break master @a[distance=..50] ~ ~ ~ 1 0
