tag @s add executor


execute at @s run summon minecraft:lightning_bolt
execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}

execute at @s run particle minecraft:dust{color:[1f,0.87f,0f],scale:3f} ~ ~ ~ 2.45 0.3 2.45 0 50
execute at @s run particle minecraft:dust{color:[0f,0.98f,1f],scale:2f} ~ ~ ~ 2.15 0.3 2.15 0 240

execute at @s run particle minecraft:glow_squid_ink ~ ~0.7 ~ 0.3 0.3 0.3 3 305
execute at @s run particle minecraft:end_rod ~ ~0.7 ~ 0.3 0.3 0.3 3 305
execute at @s run playsound minecraft:entity.ender_eye.death ambient @a[distance=..60] ~ ~ ~ 3 1

execute at @s run scoreboard players set @a[distance=..30] svm_ep.clear_slowness 5
execute at @s run effect give @a[distance=..30] minecraft:slowness 1 6 true
execute at @s run scoreboard players set @a[distance=..30] svm_ep.clear_speed 8
execute at @s run effect give @a[distance=..30] minecraft:speed 1 5 true

execute as @e[tag=svm_ep.lightning_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
execute at @s run function svm_ep:power/lightning/lightning_place/raycast2
effect give @e[tag=same_id] minecraft:slow_falling 3 0 true
execute at @e[tag=same_id] run particle minecraft:sonic_boom ~ ~1 ~
execute at @e[tag=same_id] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[2.4f,0.0f,0.5f],scale:1f} ~ ~0.3 ~ 5 0.3 5 0.4 80
tag @e remove same_id
tag @s remove executor

kill @s