execute at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.75 ~
scoreboard players add @s svm_ep.lifetime 100
execute as @s[scores={svm_ep.lifetime=5..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.15 ~
execute as @s[scores={svm_ep.lifetime=8..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.16 ~
execute as @s[scores={svm_ep.lifetime=11..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.17 ~
execute as @s[scores={svm_ep.lifetime=14..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.18 ~
execute as @s[scores={svm_ep.lifetime=17..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.19 ~
execute as @s[scores={svm_ep.lifetime=20..}] at @s if block ~ ~ ~ #svm_core:no_hitbox run tp @s ~ ~-0.20 ~
scoreboard players remove @s svm_ep.lifetime 100


execute at @s if block ~ ~ ~ #svm_core:no_hitbox positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=!#svm_ep:technical,dx=0] run return 0

execute at @s as @s[scores={svm_ep.lifetime=-17..}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#svm_ep:technical,dx=0] run damage @s 11 svm_ep:no_cooldown by @n[tag=svm_ep.item_display]
execute at @s as @s[scores={svm_ep.lifetime=-13..16}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#svm_ep:technical,dx=0] run damage @s 8.5 svm_ep:no_cooldown by @n[tag=svm_ep.item_display]
execute at @s as @s[scores={svm_ep.lifetime=-9..12}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#svm_ep:technical,dx=0] run damage @s 4 svm_ep:no_cooldown by @n[tag=svm_ep.item_display]
execute at @s as @s[scores={svm_ep.lifetime=-5..8}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#svm_ep:technical,dx=0] run damage @s 3.5 svm_ep:no_cooldown by @n[tag=svm_ep.item_display]
execute at @s as @s[scores={svm_ep.lifetime=..4}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#svm_ep:technical,dx=0] run damage @s 1 svm_ep:no_cooldown by @n[tag=svm_ep.item_display]
execute at @s run particle minecraft:crit ~ ~0.5 ~ 0.1 0.1 0.1 1.5 10 force @a[distance=..65]
execute at @s run playsound minecraft:entity.wither.break_block block @a[distance=..25] ~ ~1 ~ 0.3 0.9 0.2

kill @s