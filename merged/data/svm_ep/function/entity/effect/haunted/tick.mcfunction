scoreboard players set @s svm_ep.effect 1
execute as @s[scores={svm_ep.e.haunted=..0}] run return 0
scoreboard players remove @s svm_ep.e.haunted 1

execute as @s[scores={svm_ep.e.haunted=..7200}] at @s run return run function svm_ep:entity/effect/haunted/tick_invincible
execute at @s run scoreboard players remove @n[tag=svm_ep.death_user,distance=..15] svm_ep.p.death_ability_04_delay 1
execute at @s run scoreboard players add @n[tag=svm_ep.death_user] svm_ep.p.death_ability_04_delay 3

execute at @s on attacker as @s[tag=svm_ep.death_user] as @n run function svm_ep:entity/effect/haunted/attacked_by_death
execute at @s run particle minecraft:trial_spawner_detection ~ ~1 ~ 1.5 2.7 1.5 0 8 force @a[tag=svm_ep.death_user]
execute at @s run effect give @e[tag=svm_ep.death_user,distance=..30] minecraft:speed 2 2 true
execute at @s run effect give @e[tag=svm_ep.death_user,distance=..5] minecraft:strength 1 1 true