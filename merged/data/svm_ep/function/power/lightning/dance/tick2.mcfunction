tag @s add executor
tag @s[scores={svm_ep.sprinting2=0}] add reset
tag @s[scores={svm_ep.walking2=0}] add reset

tag @s[scores={svm_ep.sprinting2=1..}] remove reset
tag @s[scores={svm_ep.walking2=1..}] remove reset

scoreboard players set @s svm_ep.sprinting2 0
scoreboard players set @s svm_ep.walking2 0
scoreboard players remove @s[nbt={OnGround:1b}] svm_ep.using_move 3
tag @s remove reset
execute at @s anchored eyes positioned ^ ^ ^1.5 as @e[type=!#svm_ep:technical,tag=!executor,dx=1.9] run function svm_ep:power/lightning/dance/hitby
effect give @s[scores={svm_ep.using_move=940..}] minecraft:speed 1 10 true
effect give @s[scores={svm_ep.using_move=940..990}] minecraft:speed 1 12 true
effect give @s[scores={svm_ep.using_move=940..980}] minecraft:speed 1 15 true
effect give @s[scores={svm_ep.using_move=940..970}] minecraft:speed 1 17 true
effect give @s[scores={svm_ep.using_move=940..960}] minecraft:speed 1 20 true
effect give @s[scores={svm_ep.using_move=940..950}] minecraft:speed 1 22 true
effect give @s[scores={svm_ep.using_move=939..940}] minecraft:speed 1 25 true
effect give @s[scores={svm_ep.using_move=940..}] minecraft:jump_boost 1 3 true

execute at @s run kill @e[type=#minecraft:arrows,distance=..5]
tag @s remove executor
execute at @s run playsound minecraft:item.trident.throw player @a[distance=..30] ~ ~ ~ 1 1.4
execute at @s run particle minecraft:glow_squid_ink ~ ~0.1 ~ 0 0 0 0.5 1
execute at @s anchored eyes positioned ^ ^ ^1.5 run particle minecraft:explosion ~ ~ ~ 0.6 0.6 0.6 0 1
execute at @s run particle minecraft:sonic_boom ~ ~1 ~
execute at @s run tp @s ~ ~ ~ ~65 ~
execute at @s run function svm_ep:power/lightning/dance/spin
execute at @s run tp @s ~ ~ ~ ~-65 ~
execute at @s run tp @s ~ ~ ~ ~-65 ~
execute at @s run function svm_ep:power/lightning/dance/spin

execute at @s run tp @s ~ ~ ~ ~65 ~

