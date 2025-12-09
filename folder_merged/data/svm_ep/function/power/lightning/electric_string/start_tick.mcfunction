scoreboard players add @s svm_ep.p.lightning_string_charge 1
execute unless entity @s[scores={svm_ep.mana=1..}] run tag @s add explode
execute unless predicate svm_ep:holding_ability run tag @s add explode
scoreboard players add @s svm_ep.used_move 2
scoreboard players add @s svm_ep.mana_drain 150
scoreboard players set @s svm_ep.using_move 1250


scoreboard players add @s svm_ep.p.lightning_ability_07_delay 1

execute as @s[tag=explode] run scoreboard players set @s svm_ep.using_move 400
execute at @s[tag=explode] run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.7f,0.0f,0.5f],scale:1f} ~ ~.7 ~ 0.8 0.8 0.8 0.4 4
execute at @s[tag=explode] run playsound minecraft:entity.guardian.ambient master @a[distance=..20] ~ ~ ~ 5 2
execute at @s[tag=explode] run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 5 1
effect give @s[tag=explode] minecraft:slowness 1 4 true
effect give @s[tag=explode] minecraft:slow_falling 1 0 true
execute as @s[tag=explode] run tag @s remove explode
