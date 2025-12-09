tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1] feet

execute at @s positioned ^ ^ ^-0.35 if entity @e[tag=executor,distance=..3.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.35 if entity @e[tag=executor,distance=..3.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.35 if entity @e[tag=executor,distance=..3.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.35 if entity @e[tag=executor,distance=..3.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
execute at @s positioned ^ ^ ^-0.35 if entity @e[tag=executor,distance=..3.5] if block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^
particle minecraft:dust{color:[18000000f,4f,4f],scale:0.5f} ~ ~0.7 ~ 0.33 0.33 0.33 1 1
particle minecraft:dust{color:[4f,18000000f,4f],scale:0.5f} ~ ~0.7 ~ 0.33 0.33 0.33 1 1
particle minecraft:dust{color:[4f,4f,18000000f],scale:0.5f} ~ ~0.7 ~ 0.33 0.33 0.33 1 1

execute at @s as @e[tag=repel,distance=..5] run tp @s ~ ~ ~
kill @s