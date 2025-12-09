tag @s add executor
effect give @s minecraft:speed 1 28 true
effect give @s[scores={svm_ep.p.phase_awakening_lenght=1..}] minecraft:speed 1 38 true
effect give @s minecraft:jump_boost 1 6 true

effect give @s minecraft:resistance 1 0 true
effect clear @s[scores={svm_ep.using_move=201}] minecraft:speed
effect clear @s[scores={svm_ep.using_move=201}] minecraft:jump_boost

execute at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.4 10

execute at @s as @e[dx=2,tag=!executor,type=!#svm_ep:technical] run function svm_ep:damage/deal_normal {"damage":"3","attacker":"@n[tag=executor]","type":"no_cooldown"}

execute at @s as @e[tag=!executor,dx=2,type=!#svm_ep:technical] run damage @s 3 svm_ep:bypass_cooldown by @e[tag=executor,limit=1,sort=nearest]
execute at @s as @e[tag=!executor,distance=..3,type=!#svm_ep:technical] run damage @s 3 svm_ep:bypass_cooldown by @e[tag=executor,limit=1,sort=nearest]
execute at @s as @e[tag=!executor,dx=2,type=!#svm_ep:technical] run damage @s 2 svm_ep:bypass_cooldown by @e[scores={svm_ep.p.phase_awakening_lenght=1..},tag=executor,limit=1,sort=nearest]
execute at @s as @e[tag=!executor,distance=..3,type=!#svm_ep:technical] run damage @s 2 svm_ep:bypass_cooldown by @e[scores={svm_ep.p.phase_awakening_lenght=1..},tag=executor,limit=1,sort=nearest]


execute at @s run playsound minecraft:entity.player.attack.sweep ambient @a ~ ~1 ~ 1 1.3
execute at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0.6 0.15 0.6 0.1 7

execute at @s run summon minecraft:area_effect_cloud ~ ~0.6 ~ {Tags:["svm_ep.phase_dash"],Duration:15}

tag @s remove executor
