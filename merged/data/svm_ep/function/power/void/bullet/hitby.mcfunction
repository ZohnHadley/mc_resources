tag @s remove hitby
effect give @s minecraft:slowness 1 0 true
damage @s[type=!player] 2 minecraft:true by @n[tag=same_id]
damage @s[type=player] 1 minecraft:true by @n[tag=same_id]
scoreboard players set @n[tag=same_id] svm_ep.p.void_ability_01_delay 40

execute as @n[type=player,tag=same_id] run scoreboard players operation @s svm_ep.p.copy_ability_32_delay = @s svm_ep.tick
execute as @n[type=!player,tag=same_id] run scoreboard players operation @s svm_ep.p.copy_ability_32_delay = %WORLD svm_ep.tick
scoreboard players add @n[tag=same_id] svm_ep.p.copy_ability_32_delay 40
tag @e[tag=executor] add hit
scoreboard players remove @s[scores={svm_ep.projectile=1..}] svm_ep.projectile 4
kill @s[scores={svm_ep.projectile=..0}]
