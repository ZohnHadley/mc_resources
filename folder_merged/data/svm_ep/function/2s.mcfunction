schedule function svm_ep:2s 2s
execute if score 2s svm_ep.function matches 0 run return 0


effect give @e[tag=svm_ep.npc_permanent_invisible] minecraft:invisibility infinite 0 true
execute as @a[predicate=!svm_ep:has_entity_id] run function svm_ep:system/new_entity
execute as @e[type=#svm_ep:give_ids,predicate=!svm_ep:has_entity_id,tag=!svm_ep.has_entity_id,tag=!svm_ep.npc] run function svm_ep:npc/check_spawn
execute as @e[tag=svm_ep.power_user,predicate=!svm_ep:has_entity_id] run function svm_ep:system/new_entity

#execute as @a[tag=svm_ep.flora_user] at @s if biome ~ ~ ~ #svm_ep:gives_flora_passive run function svm_ep:power/flora/forest_passive
execute in svm_ep:pocket as @e[type=!#svm_ep:technical,distance=0..] at @s run function svm_ep:power/dimension_traveler/hop/restore_terrain
execute in svm_ep:pocket as @a[distance=0..] at @s if predicate svm_ep:chance/20_percent unless entity @e[tag=svm_ep.dimension_traveler_user,distance=..100] run function svm_ep:power/dimension_traveler/hop/tp2
execute in svm_ep:cherry_island as @a[distance=0..] at @s if predicate svm_ep:chance/20_percent run function svm_ep:power/dimension_traveler/dimension/cherry_check_to_kick


execute as @e[tag=svm_ep.npc_zombie,limit=15,sort=random] at @s run function svm_ep:npc/zombie/tick

scoreboard players add @e[scores={svm_ep.npc=1..,svm_ep.mana=..200},tag=svm_ep.power_user] svm_ep.mana 4
execute as @a[scores={svm_ep.joined=1..}] run function svm_ep:player/joined
#execute if predicate svm_ep:chance/10_percent as @e[tag=svm_ep.cherry_island_placed] at @s run function svm_ep:structures/cherry_island/summon_loot
#VOID
scoreboard players add %VOID_TICK svm_ep.world_settings 1
execute if score %VOID_TICK svm_ep.world_settings matches 3.. run scoreboard players set %VOID_TICK svm_ep.world_settings 1

scoreboard players enable @a svm_ep.menu
scoreboard players enable @a svm_ep.toggle_power
scoreboard players enable @a svm_ep.switch_hotbar
scoreboard players enable @a svm_ep.z.bind_ability

#ITEM TICK
execute as @e[type=item] run function svm_ep:item_tick

execute if entity @e[tag=svm_ep.npc_thunder_god] run bossbar set minecraft:lightning_god visible true
execute unless entity @e[tag=svm_ep.npc_thunder_god] run bossbar set minecraft:lightning_god visible false
execute if entity @e[tag=svm_ep.inescapable_garden] run bossbar set svm_ep:inescapable_garden visible true
execute unless entity @e[tag=svm_ep.inescapable_garden] run bossbar set svm_ep:inescapable_garden visible false
bossbar set svm_ep:inescapable_garden players @a
execute as @a[team=svm_ep.cherry_guardians] run function svm_ep:team/cherry_guardians/2s

scoreboard players add @e[type=marker,tag=svm_ep.placed_ice_slow,predicate=!svm_ep:time_stopped] svm_ep.lifetime 1
execute as @e[type=marker,tag=svm_ep.placed_ice_slow,scores={svm_ep.lifetime=60..},limit=50,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/ice/tongue/destroy
execute as @e[type=!#svm_ep:technical,scores={svm_ep.p.healing_marked_by=1..}] run function svm_ep:power/healing/marking/decrease
execute as @e[tag=svm_ep.lightning_place,limit=5,sort=random] at @s unless entity @e[tag=svm_ep.lightning_user,distance=..100] run kill @s
execute as @e[tag=svm_ep.check_to_recall,predicate=!svm_ep:time_stopped] at @s run function svm_ep:system/check_to_recall


