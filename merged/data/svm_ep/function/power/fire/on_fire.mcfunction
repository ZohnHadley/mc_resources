scoreboard players remove @s svm_ep.p.fire_on_fire 1

execute at @s[scores={svm_ep.p.fire_on_fire=20..}] if block ~ ~ ~ #svm_ep:no_physical_hitbox run setblock ~ ~ ~ fire
execute at @s if entity @e[tag=svm_ep.fire_user,scores={svm_ep.using_move=500..700}] run damage @s 2.5 minecraft:on_fire
damage @s 1 minecraft:on_fire
execute at @s run particle minecraft:flame ~ ~0.9 ~ 0.4 0.55 0.4 0.35 3
execute at @s run particle minecraft:dust{color:[18000000f,0.94f,0f],scale:1.6f} ~ ~ ~ 0.4 0.55 0.4 0 1
execute at @s run particle minecraft:dust{color:[18000000f,0.64f,0f],scale:1.45f} ~ ~ ~ 0.4 0.55 0.4 0 1
execute at @s run particle minecraft:dust{color:[1f,0.14f,0f],scale:1.3f} ~ ~ ~ 0.4 0.55 0.4 0 2


execute at @s if block ~ ~ ~ water run scoreboard players reset @s svm_ep.p.fire_on_fire