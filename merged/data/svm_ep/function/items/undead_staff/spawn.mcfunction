spreadplayers ~ ~ 10 50 false @s
execute at @s run damage @s 0.1 minecraft:mob_attack by @e[distance=0.1..,sort=nearest,limit=1,type=!#svm_ep:technical,type=!zombie]
execute at @s run scoreboard players add @a[distance=..7] svm_ep.shaking 5
execute at @s run playsound minecraft:entity.zombie.infect master @a[distance=..10] ~ ~ ~ 2 0
execute at @s run playsound minecraft:entity.wither.spawn master @a[distance=..10] ~ ~ ~ 0.7 2
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.1f],scale:3f} ~ ~0.7 ~ 0.24 0.8 0.24 0 50

tag @s add svm_ep.npc_zombie
effect give @s minecraft:fire_resistance 60 0 true