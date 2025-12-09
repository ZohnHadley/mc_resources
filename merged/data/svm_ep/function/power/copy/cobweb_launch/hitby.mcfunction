tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0

scoreboard players set %STATE svm_ep.numbers 0
kill @n[tag=executor]

damage @s 5 minecraft:mob_projectile
particle minecraft:block_marker{block_state:cobweb} ~ ~0.7 ~ 0.4 0.7 0.4 0 5
effect give @s minecraft:slowness 4 5 true


execute if entity @s[gamemode=spectator] run return 0
execute at @s summon block_display run function svm_ep:entity/effect/cobwebed/setup_display1
execute at @s summon block_display run function svm_ep:entity/effect/cobwebed/setup_display2
execute at @s summon block_display run function svm_ep:entity/effect/cobwebed/setup_display3
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.cobwebed 150


execute at @s positioned ~ ~.5 ~ run particle minecraft:item{item:cobweb} ~ ~ ~ 1 1 1 1.5 10
execute at @s positioned ~ ~.5 ~ run particle minecraft:gust
playsound minecraft:block.cobweb.break master @a[distance=..25] ~ ~ ~ 1 0

#execute at @s run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~1.25 ~0.25 ice replace #svm_ep:no_physical_hitbox


attribute @s minecraft:movement_speed modifier add svm_ep.e.cobwebed -1 add_multiplied_base

attribute @s minecraft:block_break_speed modifier add svm_ep.e.cobwebed -1 add_multiplied_base
attribute @s minecraft:block_interaction_range modifier add svm_ep.e.cobwebed -1 add_multiplied_base
attribute @s minecraft:entity_interaction_range modifier add svm_ep.e.cobwebed -1 add_multiplied_base
