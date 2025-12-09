tag @s add executor
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:slowness 1 3 true
effect give @s minecraft:resistance 1 255 true

scoreboard players set @s svm_ep.p.phase_used_smash 20

effect clear @s[scores={svm_ep.using_move=801}] minecraft:invisibility
execute at @s run summon marker ~ ~1 ~ {Tags:["new31","new"]}

execute at @s positioned ~ ~14 ~ summon minecraft:item_display run data merge entity @s {Tags:["svm_ep.gauntlet_foreshadow"],brightness:{sky:15,block:15},item_display:"head",interpolation_start:-1,interpolation_duration:0,transformation:{scale:[0f,0f,0f]}}


execute at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.5 0.1 0.4 10
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.65 75
execute at @s anchored eyes positioned ^ ^ ^0.5 run spreadplayers ~ ~ 2 2 true @s
execute at @s run playsound minecraft:entity.player.attack.knockback ambient @a[distance=..20] ~ ~1 ~ 2.5 2

execute at @s run summon marker ~ ~1 ~ {Tags:["new32","new"]}

execute as @e[tag=new31] at @s run function svm_ep:power/phase/smash/raycast

kill @e[tag=new]
tag @s remove executor
