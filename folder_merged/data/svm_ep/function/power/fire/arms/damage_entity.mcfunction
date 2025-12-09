tag @s add executor
tag @s add fire_punched_tick
execute as @e[distance=..5,type=!item,type=!#svm_ep:technical] at @s on attacker if entity @s[tag=executor] as @e[sort=nearest,limit=1] run data modify entity @s Fire set value 2s
execute as @e[distance=..5,type=!item,type=!#svm_ep:technical] at @s on attacker if entity @s[tag=executor] as @e[sort=nearest,limit=1] run scoreboard players add @s svm_ep.p.fire_on_fire 35
execute at @s run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1.2 0


tag @s remove executor