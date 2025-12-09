kill @e[tag=rotator]
#DIED
execute as @a[scores={svm_ep.died=1..}] run function svm_ep:player/died



#TIME STOP
scoreboard players add %WORLD svm_ep.tick 1
execute as @e[scores={svm_ep.restore_health=1..}] run function svm_ep:player/restore_health




execute as @e[scores={svm_ep.tick_acceleration=1..},predicate=!svm_ep:time_stopped] run function svm_ep:time/give_extra_ticks

execute as @e[scores={svm_ep.time_stopping=1..}] run function svm_ep:time/stopper
execute as @e[scores={svm_ep.time_stopped=0}] run function svm_ep:time/unstop_entity
scoreboard players remove @e[scores={svm_ep.time_stopped=1..}] svm_ep.time_stopped 1




#PROJECTILES
tag @e[type=#minecraft:impact_projectiles,tag=!svm_ep.arrow_redirected] add svm_ep.can_redirect
scoreboard players set @e[type=#minecraft:impact_projectiles] svm_ep.projectile 1



#NPC
execute as @e[tag=svm_ep.npc,tag=!svm_ep.npc_display,predicate=!svm_ep:time_stopped] at @s run function svm_ep:npc/tick

#USING ABILITY
execute as @e[scores={svm_ep.ability.using=0..},predicate=!svm_ep:time_stopped] run function svm_ep:ability/using
execute as @e[scores={svm_ep.using_move=100000..},predicate=!svm_ep:time_stopped] at @s run function svm_ep:non_power/using_tick
scoreboard players remove @e[scores={svm_ep.using_move=1..},predicate=!svm_ep:time_stopped] svm_ep.using_move 1


#tech
execute as @e[scores={svm_ep.kill_at=1..},predicate=!svm_ep:time_stopped] if score @s svm_ep.kill_at <= %WORLD svm_ep.tick run kill @s[type=!player]
execute as @e[scores={svm_ep.kill_after=0..},predicate=!svm_ep:time_stopped] at @s run function svm_ep:system/kill_after/tick
execute as @e[type=#svm_ep:technical,type=!item,tag=!svm_ep.npc,tag=!svm_ep.no_tick,predicate=!svm_ep:time_stopped] at @s run function svm_ep:selected_tick


#PARTICLE
execute as @e[scores={svm_ep.particle=1..},predicate=!svm_ep:time_stopped] run function svm_ep:particle_tick


#PROJECTILE
execute as @e[type=!#minecraft:impact_projectiles,scores={svm_ep.projectile=-100..},predicate=!svm_ep:time_stopped] run function svm_ep:projectile/tick




#POWERS
execute as @e[tag=svm_ep.power_user,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/user_tick






#EFFECTS
execute as @e[scores={svm_ep.effect=1..},predicate=!svm_ep:time_stopped] run function svm_ep:entity/effect/tick


execute as @e[scores={svm_ep.p.explosion_barrier_effect=1..},predicate=!svm_ep:time_stopped] run function svm_ep:power/explosion/barrier/effect
execute as @e[scores={svm_ep.p.fire_on_fire=1..},predicate=!svm_ep:time_stopped] run function svm_ep:power/fire/on_fire
scoreboard players remove @e[scores={svm_ep.portal_delay=1..},predicate=!svm_ep:time_stopped] svm_ep.portal_delay 1
scoreboard players remove @e[scores={svm_ep.p.dimension_front_delay=1..},predicate=!svm_ep:time_stopped] svm_ep.p.dimension_front_delay 1


execute if score %WORLD_SPEED svm_ep.world_settings matches 0.. run function svm_ep:system/world/speeded_up
execute if score %METEOR_RAIN svm_ep.world_settings matches 0.. run function svm_ep:system/world/meteor_rain


#LAGGY
execute as @e[tag=svm_ep.explosion_ray,sort=random,limit=15,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/explosion/destroyer/projectile_tick
execute as @e[tag=svm_ep.lightning_ready,limit=1,sort=random,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/lightning/lightning_place/summon
execute as @e[tag=svm_ep.flora_oak_leaves,limit=10,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/flora/tree_place/place_leaf2
execute as @e[tag=svm_ep.flora_oak_leaves,limit=10,sort=random,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/flora/tree_place/place_leaf2
execute as @e[tag=svm_ep.flora_tree_big,limit=2,predicate=!svm_ep:time_stopped] run function svm_ep:power/flora/tree_big/projectile_tick
execute as @e[tag=svm_ep.flora_tree_big,limit=2,sort=random,predicate=!svm_ep:time_stopped] run function svm_ep:power/flora/tree_big/projectile_tick
execute as @e[tag=svm_ep.iceberg_projectile,sort=random,limit=25,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/ice/berg/projectile_tick

scoreboard players add @e[type=marker,tag=svm_ep.placed_ice,predicate=!svm_ep:time_stopped] svm_ep.lifetime 1
execute as @e[type=marker,tag=svm_ep.placed_ice,scores={svm_ep.lifetime=160..},limit=50,predicate=!svm_ep:time_stopped] at @s run function svm_ep:power/ice/berg/destroy_ice


#BLOCK
tag @e remove executor
tag @e remove same_id