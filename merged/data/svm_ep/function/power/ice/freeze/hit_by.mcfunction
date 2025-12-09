execute if entity @s[gamemode=spectator] run return 0
execute at @s summon item_display run function svm_ep:entity/effect/freezed/setup_display1
execute at @s summon item_display run function svm_ep:entity/effect/freezed/setup_display2
execute at @s summon item_display run function svm_ep:entity/effect/freezed/setup_display3
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.freezed 150
data modify entity @s Motion set value [0,0,0]

execute at @s positioned ~ ~.5 ~ run particle minecraft:item{item:ice} ~ ~ ~ 1 1 1 1.5 10
execute at @s positioned ~ ~.5 ~ run particle minecraft:dust{color:[0.8f,18000000f,18000000f],scale:2f} ~ ~ ~ 0.8 0.3 0.8 0.5 10
execute at @s positioned ~ ~.15 ~ run particle minecraft:dust{color:[0.4f,18000000f,18000000f],scale:2f} ~ ~ ~ 1.4 0.1 1.4 0.5 20
execute at @s positioned ~ ~.5 ~ run particle minecraft:gust
particle minecraft:block_marker{block_state:ice} ~ ~1 ~ 0.4 0.7 0.4 0 10
playsound minecraft:entity.player.hurt_freeze master @a[distance=..25] ~ ~ ~ 1 0.5
particle minecraft:dust{color:[0.8f,1f,18000000f],scale:3f} ~ ~1 ~ 1.3 1.3 1.3 0.5 10
particle minecraft:dust{color:[1f,1f,18000000f],scale:3f} ~ ~1 ~ 1.3 1.3 1.3 0.5 10

#execute at @s run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~1.25 ~0.25 ice replace #svm_ep:no_physical_hitbox


attribute @s minecraft:movement_speed modifier add svm_ep.e.freezed -1 add_multiplied_base

attribute @s minecraft:block_break_speed modifier add svm_ep.e.freezed -1 add_multiplied_base
attribute @s minecraft:block_interaction_range modifier add svm_ep.e.freezed -1 add_multiplied_base
attribute @s minecraft:entity_interaction_range modifier add svm_ep.e.freezed -1 add_multiplied_base
