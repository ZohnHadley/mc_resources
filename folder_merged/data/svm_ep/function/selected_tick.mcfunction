#AS #SELECTED TYPES, NPCs, Power Users



execute as @s[tag=svm_ep.click_check] at @s run return run function svm_ep:system/click_check/hitbox_tick
execute as @s[tag=svm_ep.block,tag=!svm_ep.block_set] at @s run return run function svm_ep:block/set


execute as @s[tag=svm_ep.temporary_block] at @s run return run function svm_ep:system/temporary_block/tick
execute as @s[tag=svm_ep.temporary_marker] at @s run return run function svm_ep:system/temporary_marker/tick


execute as @s[tag=svm_ep.crack] at @s run return run function svm_ep:system/crack/tick
execute as @s[tag=svm_ep.slime_barrier] at @s run return run function svm_ep:power/slime/spit/temporary_tick
execute as @s[scores={svm_ep.item_display_type=0..}] run return run function svm_ep:system/item_display_tick
execute as @s[tag=svm_ep.dimension_portal_hitbox] at @s run return run function svm_ep:power/dimension_traveler/quick_portal/hitbox_tick
execute as @s[tag=svm_ep.dimension_gate_display] at @s run return run function svm_ep:power/dimension_traveler/gate/projectile_tick
execute as @s[tag=svm_ep.dimension_gate_ray] at @s run return run function svm_ep:power/dimension_traveler/gate/ray/projectile_tick
execute as @s[tag=svm_ep.dimension_quick_portal_display] at @s run return run function svm_ep:power/dimension_traveler/quick_portal/projectile_tick
execute as @s[tag=svm_ep.dimension_front_display] at @s run return run function svm_ep:power/dimension_traveler/front/projectile_tick
execute as @s[tag=svm_ep.dimension_punch_portal_display] at @s run return run function svm_ep:power/dimension_traveler/quick_portal/projectile_tick2
execute as @s[tag=svm_ep.punch_impact_display] at @s run return run function svm_ep:power/dimension_traveler/quick_portal/projectile_tick3
execute as @s[tag=svm_ep.sword_slash_360] at @s run return run function svm_ep:fighting_style/sword/slash/360/projectile_tick
execute as @s[tag=svm_ep.fire_arms_ring] at @s run return run function svm_ep:power/fire/arms/projectile_tick
execute as @s[tag=svm_ep.aniti_arrow_impact] at @s run return run function svm_ep:fighting_style/anti_arrow_impact



execute as @s[tag=svm_ep.loot_thunder_god] at @s run return run function svm_ep:npc/thunder_god/loot_tick

#NPC
execute as @s[tag=svm_ep.npc_aj_model] at @s run return run function svm_ep:npc/aj_model_tick
execute as @s[tag=svm_ep.npc_spawner] unless entity @e[tag=tester] at @s run return run function svm_ep:npc/spawner
execute as @s[tag=svm_ep.decoration_set] unless entity @e[tag=tester] at @s run return run function svm_ep:structures/decoration/set
execute as @s[tag=svm_ep.decoration_set] if entity @e[tag=tester] at @s run return run particle minecraft:dust{color:[1f,0f,0.7f],scale:2f} ~ ~.5 ~ 0.45 0.45 0.45 0 1


#STRUCTURES
execute as @s[tag=svm_ep.colloseum_spawn] run return run function svm_ep:structures/colloseum/tick




execute at @s[tag=svm_ep.phase_dash] run return run particle minecraft:end_rod ~ ~ ~ 0.35 0.4 0.35 0.05 15
execute as @s[tag=svm_ep.gauntlet_foreshadow] at @s run return run function svm_ep:power/phase/smash/gauntlet_tick
execute as @s[tag=svm_ep.lightning_foreshadow] run return run function svm_ep:power/lightning/foreshadow/display_tick
execute as @s[tag=svm_ep.flora_log_destroy] at @s run return run function svm_ep:power/flora/log_destroy/tick
execute as @s[tag=svm_ep.portal] at @s run return run function svm_ep:items/portal/tick
execute as @s[tag=svm_ep.bush_display] at @s run return run function svm_ep:power/flora/bush/projectile_tick
execute as @s[tag=svm_ep.mountain_cut] at @s run return run function svm_ep:items/katana/mountain_cut/projectile_tick
execute as @s[tag=svm_ep.flora_moss] at @s run return run function svm_ep:power/flora/mossify/projectile_tick
execute as @s[tag=svm_ep.explosion_destroyer_charge] at @s run particle minecraft:dust{color:[1f,0.1f,0f],scale:2.5f} ~ ~ ~ 1 1 1 0 3

execute as @s[tag=svm_ep.explosion_destroyer_charge_active] at @s run return run function svm_ep:power/explosion/destroyer/animation
execute as @s[tag=svm_ep.explosion_destroyer_charge] at @s run return 0
execute as @s[tag=svm_ep.explosion_ring] at @s run return run function svm_ep:power/explosion/destroyer/ring_tick
execute as @s[tag=svm_ep.explosion_particle] at @s run return run function svm_ep:power/explosion/destroyer/explode_particle
execute as @s[tag=svm_ep.calcite_trap] run return run execute at @s if entity @e[type=player,distance=..7] run function svm_ep:npc/spawn/calcite_guard
execute as @s[tag=svm_ep.extinguish] at @s run return run function svm_ep:system/extinguish_tick
execute as @s[tag=svm_ep.cherry_island] at @s run return run function svm_ep:structures/cherry_island/place
execute as @s[tag=svm_ep.mountain_cut2] at @s run return run function svm_ep:non_power/mountain_cut/projectile_tick


tag @s add svm_ep.no_tick
