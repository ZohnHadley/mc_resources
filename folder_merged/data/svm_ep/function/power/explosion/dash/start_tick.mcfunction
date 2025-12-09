execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..19] ~ ~ ~ 0.5 2
execute at @s positioned ^ ^1 ^-1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.2 15
execute at @s positioned ^ ^1 ^-1 run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 15
execute at @s positioned ^ ^1 ^-1 run particle minecraft:dust{color:[0.2f,0f,0f],scale:1.3f} ~ ~ ~ 0.7 0.7 0.7 0 7



scoreboard players add @s svm_ep.p.explosion_launch_charge 2
execute unless entity @s[scores={svm_ep.mana=1..}] run tag @s add explode
execute unless predicate svm_ep:holding_ability run tag @s add explode
scoreboard players add @s svm_ep.used_move 4
scoreboard players add @s svm_ep.mana_drain 75
scoreboard players add @s[scores={svm_ep.p.explosion_launch_charge=15..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_launch_charge=25..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_launch_charge=35..}] svm_ep.mana_drain 50
scoreboard players add @s[scores={svm_ep.p.explosion_launch_charge=45..}] svm_ep.mana_drain 50
scoreboard players set @s svm_ep.using_move 250



execute as @s[tag=explode] run scoreboard players set @s svm_ep.using_move 299
execute as @s[tag=explode] run tag @s remove explode