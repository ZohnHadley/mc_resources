scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_02_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=30..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_02_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 80
scoreboard players add @s svm_ep.using_move 150
scoreboard players remove @s svm_ep.mana 30
scoreboard players remove @s svm_ep.p.copy_ability_02_count 1

scoreboard players set @s svm_ep.p.copy_ability_02_delay 20
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_02_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_02_delay += %WORLD svm_ep.tick

attribute @s minecraft:explosion_knockback_resistance modifier add svm_ep:armadillo_armor 0.5 add_multiplied_total
attribute @s minecraft:attack_damage modifier add svm_ep:armadillo_armor -1 add_multiplied_total
attribute @s minecraft:attack_damage modifier add svm_ep:armadillo_armor -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add svm_ep:armadillo_armor -0.95 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add svm_ep:armadillo_armor -0.85 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier add svm_ep:armadillo_armor -0.85 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add svm_ep:armadillo_armor 0.85 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add svm_ep:armadillo_armor 0.85 add_multiplied_total
attribute @s minecraft:armor modifier add svm_ep:armadillo_armor 20 add_value
attribute @s minecraft:scale modifier add svm_ep:armadillo_armor -0.3 add_multiplied_total

execute at @s run playsound minecraft:entity.armadillo.roll master @a[distance=..25] ~ ~ ~ 1.5 0.9
particle minecraft:cloud ~ ~1 ~ 0 0 0 0.95 10

scoreboard players set $strength player_motion.api.launch 5500

execute at @s anchored eyes facing ^ ^1 ^1 run function player_motion:api/launch_looking

#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
 
#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







