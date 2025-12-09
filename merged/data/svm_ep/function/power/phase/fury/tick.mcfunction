tag @s add executor
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 255 true
effect clear @s[scores={svm_ep.using_move=1}] minecraft:invisibility
execute at @s run summon marker ~ ~1 ~ {Tags:["new31","new"]}


execute at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.4 10

execute at @s anchored eyes positioned ^ ^ ^1 run spreadplayers ~ ~ 2 2 true @s
execute at @s as @e[tag=!executor,dx=4,type=!#svm_ep:technical] run damage @s 2 svm_ep:bypass_cooldown by @e[tag=executor,limit=1,sort=nearest]
execute at @s as @e[tag=!executor,distance=..4,type=!#svm_ep:technical] run damage @s 4 svm_ep:bypass_cooldown by @e[tag=executor,limit=1,sort=nearest]
execute at @s as @e[tag=!executor,dx=4,type=!#svm_ep:technical] run damage @s 3 svm_ep:bypass_cooldown by @e[scores={svm_ep.p.phase_awakening_lenght=1..},tag=executor,limit=1,sort=nearest]
execute at @s as @e[tag=!executor,distance=..4,type=!#svm_ep:technical] run damage @s 3 svm_ep:bypass_cooldown by @e[scores={svm_ep.p.phase_awakening_lenght=1..},tag=executor,limit=1,sort=nearest]
execute at @s run playsound minecraft:entity.player.attack.sweep ambient @a ~ ~1 ~ 1 1.3
execute at @s run particle minecraft:sweep_attack ~ ~0.7 ~ 0.9 0.3 0.9 0.1 7
execute at @s run playsound minecraft:item.trident.throw ambient @a ~ ~1 ~ 1 0.8

execute at @s run summon marker ~ ~1 ~ {Tags:["new32","new"]}

execute as @e[tag=new31] at @s run function svm_ep:power/phase/fury/raycast

kill @e[tag=new]
tag @s remove executor
