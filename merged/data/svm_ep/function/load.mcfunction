 #SCOREBOARSDS
#GAMERULES
scoreboard objectives add svm_ep.gamerule dummy
gamerule commandBlockOutput false
gamerule maxCommandChainLength 131072
execute in svm_ep:technical run forceload add 0 0 0 0

#GENERIC
scoreboard objectives add svm_ep.r.click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add svm_ep.using_move dummy
scoreboard objectives add svm_ep.using_move_copy dummy
scoreboard objectives add svm_ep.shifting minecraft.custom:minecraft.sneak_time
scoreboard objectives add svm_ep.shift_time dummy
scoreboard objectives add svm_ep.shifted dummy
scoreboard objectives add svm_ep.used_move dummy
scoreboard objectives add svm_ep.lifetime dummy
scoreboard objectives add svm_ep.souls dummy
scoreboard objectives add svm_ep.deaths deathCount
scoreboard objectives add svm_ep.entity_id dummy
scoreboard objectives add svm_ep.entity_id_slow dummy
scoreboard objectives add svm_ep.owner_id dummy
scoreboard objectives add svm_ep.numbers dummy
scoreboard objectives add svm_ep.check_click dummy

scoreboard objectives add svm_ep.menu trigger
scoreboard objectives add svm_ep.toggle_power trigger
scoreboard objectives add svm_ep.switch_hotbar trigger
scoreboard objectives add svm_ep.z.bind_ability trigger
scoreboard objectives add svm_ep.z.bind_ability.slot trigger
scoreboard objectives add svm_ep.z.mid_ability_input trigger

scoreboard objectives add svm_ep.time_stopped dummy
scoreboard objectives add svm_ep.time_stopping dummy
scoreboard objectives add svm_ep.extra_ticks dummy
scoreboard objectives add svm_ep.extra_tick_power_user dummy
scoreboard objectives add svm_ep.extra_tick_mana dummy
scoreboard objectives add svm_ep.extra_tick_fighting_style_user dummy
scoreboard objectives add svm_ep.tick_acceleration dummy
scoreboard objectives add svm_ep.time dummy
scoreboard objectives add svm_ep.time_health_storage dummy
scoreboard objectives add svm_ep.time_mana_storage dummy
scoreboard objectives add svm_ep.restore_health dummy
scoreboard objectives add svm_ep.died deathCount
scoreboard objectives add svm_ep.health health
scoreboard objectives add svm_ep.level level
scoreboard objectives add svm_ep.food food
scoreboard objectives add svm_ep.walking minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add svm_ep.sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add svm_ep.ability_points dummy
scoreboard objectives add svm_ep.damage_dealt minecraft.custom:minecraft.damage_dealt

scoreboard objectives add svm_ep.walking2 minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add svm_ep.sprinting2 minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add svm_ep.jump minecraft.custom:minecraft.jump
scoreboard objectives add svm_ep.joined minecraft.custom:minecraft.leave_game


scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy
scoreboard objectives add pos.x2 dummy
scoreboard objectives add pos.y2 dummy
scoreboard objectives add pos.z2 dummy
scoreboard objectives add fire dummy
scoreboard objectives add health dummy
scoreboard objectives add health_max dummy
scoreboard objectives add motion.x dummy
scoreboard objectives add motion.y dummy
scoreboard objectives add motion.z dummy
scoreboard objectives add svm_ep.motion_x dummy
scoreboard objectives add svm_ep.motion_y dummy
scoreboard objectives add svm_ep.motion_z dummy
scoreboard objectives add svm_ep.fuse dummy
scoreboard objectives add rot.x dummy
scoreboard objectives add rot.y dummy
scoreboard objectives add falldistance dummy
scoreboard objectives add falldistance_copy dummy
scoreboard objectives add svm_ep.rotation dummy
scoreboard objectives add svm_ep.tp_to dummy
scoreboard objectives add svm_ep.deal_damage dummy
scoreboard objectives add svm_ep.projectile dummy
scoreboard objectives add svm_ep.projectile_id dummy
scoreboard objectives add svm_ep.projectile_type dummy
scoreboard objectives add svm_ep.projectile_redirected_cooldown dummy
scoreboard objectives add svm_ep.kill_after dummy
scoreboard objectives add svm_ep.kill_at dummy
scoreboard objectives add svm_ep.kill_after_function dummy
scoreboard objectives add svm_ep.particle dummy
scoreboard objectives add svm_ep.checked_click dummy
scoreboard objectives add svm_ep.player_permissions dummy
scoreboard objectives add svm_ep.used_non_power_ability dummy
scoreboard objectives add svm_ep.previous_dimension dummy
scoreboard objectives add svm_ep.player_version dummy
scoreboard objectives add svm_ep.block_updated_at dummy
scoreboard objectives add svm_ep.connected_block_state dummy

scoreboard objectives add svm_ep.dimension_pre.domain_expansion dummy
scoreboard objectives add svm_ep.dimension_pre.cherry_island dummy
scoreboard objectives add svm_ep.dimension_pre.black_hole dummy
scoreboard objectives add svm_ep.dimension_pre.dimension_gate dummy
scoreboard objectives add svm_ep.dimension_pre.dimension_hop dummy


scoreboard objectives add svm_ep.previous_gamemode dummy
scoreboard objectives add svm_ep.attack_entity_action dummy
scoreboard objectives add svm_ep.ability.id dummy
scoreboard objectives add svm_ep.ability.using dummy
scoreboard objectives add svm_ep.ability.unlock dummy

scoreboard objectives add svm_ep.ability_input dummy
scoreboard objectives add svm_ep.give_ability_item dummy

#TECHNICAL
scoreboard objectives add svm_ep.entity_count dummy
scoreboard objectives add svm_ep.raycast_length dummy
scoreboard objectives add svm_ep.charge_length dummy
scoreboard objectives add svm_ep.charge_length2 dummy
scoreboard objectives add svm_ep.charge_length3 dummy

#WORLD
scoreboard objectives add svm_ep.world_settings dummy
scoreboard objectives add svm_ep.tick dummy
scoreboard objectives add svm_ep.function dummy

#SETTINGS
scoreboard objectives add svm_ep.setting.sneak_ability dummy
scoreboard objectives add svm_ep.setting.sprint_ability dummy


#MANA
scoreboard objectives add svm_ep.mana dummy
scoreboard objectives add svm_ep.mana_drain dummy
scoreboard objectives add svm_ep.mana_max dummy
scoreboard objectives add svm_ep.mana_charge dummy
scoreboard objectives add svm_ep.mana_boost dummy
scoreboard objectives add svm_ep.mana_after_cost dummy
scoreboard objectives add svm_ep.show_mana dummy
scoreboard objectives add svm_ep.health_boost dummy
scoreboard objectives add svm_ep.golden_beetroot_boost dummy
scoreboard objectives add svm_ep.golden_bone_boost dummy

scoreboard objectives add svm_ep.golden_hunger_delay dummy
scoreboard objectives add svm_ep.portal_delay dummy
scoreboard objectives add svm_ep.shaking dummy
scoreboard objectives add svm_ep.fogged dummy
scoreboard objectives add svm_ep.fog_size dummy
#ITEMS
scoreboard objectives add svm_ep.item_power_ability_cooldown dummy
scoreboard objectives add svm_ep.fix_item_cooldown dummy
scoreboard objectives add svm_ep.thunder_shot_length dummy
scoreboard objectives add svm_ep.lightning_flash_length dummy
scoreboard objectives add svm_ep.chooser_chosen dummy
scoreboard objectives add svm_ep.chooser_type dummy
scoreboard objectives add svm_ep.holding_katana dummy
scoreboard objectives add svm_ep.katana_ability dummy
scoreboard objectives add svm_ep.katana_charge dummy
scoreboard objectives add svm_ep.katana_charge_delay dummy
scoreboard objectives add svm_ep.holding_gauntlet dummy
scoreboard objectives add svm_ep.holding_nunchucks dummy
scoreboard objectives add svm_ep.nunchucks_spin dummy
scoreboard objectives add svm_ep.holding_jungle_staff dummy
scoreboard objectives add svm_ep.charged_hammer dummy
scoreboard objectives add svm_ep.charged_tengu dummy
scoreboard objectives add svm_ep.hammer_delay dummy
scoreboard objectives add svm_ep.tengu_delay dummy
scoreboard objectives add svm_ep.undead_staff_ammo dummy
scoreboard objectives add svm_ep.sharpening_pebble_progress dummy
scoreboard objectives add svm_ep.sharpening_pebble_progress_to_make dummy
scoreboard objectives add svm_ep.sharpening_pebble_frame dummy
scoreboard objectives add svm_ep.inventory_checked_at dummy

scoreboard objectives add svm_ep.domain_expansion_length dummy
scoreboard objectives add svm_ep.domain_expansion_length2 dummy

scoreboard objectives add svm_ep.domain_expansion_type dummy
scoreboard objectives add svm_ep.domain_expansion_inside dummy
scoreboard objectives add svm_ep.domain_expansion_pre_x dummy
scoreboard objectives add svm_ep.domain_expansion_pre_y dummy
scoreboard objectives add svm_ep.domain_expansion_pre_z dummy

#EFFECTS
scoreboard objectives add svm_ep.effect dummy
scoreboard objectives add svm_ep.e.gravity_strengthen dummy
scoreboard objectives add svm_ep.e.weight_neutralizer dummy
scoreboard objectives add svm_ep.e.gravity_inverter dummy
scoreboard objectives add svm_ep.e.flora_thorned dummy
scoreboard objectives add svm_ep.e.petals_of_peace dummy
scoreboard objectives add svm_ep.e.grass_step dummy
scoreboard objectives add svm_ep.e.grass_step_1 dummy
scoreboard objectives add svm_ep.e.grass_step_2 dummy
scoreboard objectives add svm_ep.e.grass_step_3 dummy
scoreboard objectives add svm_ep.e.root_entangle dummy
scoreboard objectives add svm_ep.e.warped_fungus dummy
scoreboard objectives add svm_ep.e.inescapable_garden dummy
scoreboard objectives add svm_ep.e.accelerated dummy
scoreboard objectives add svm_ep.e.harpie_wings dummy
scoreboard objectives add svm_ep.e.harpie_grabbed dummy
scoreboard objectives add svm_ep.e.freezed dummy
scoreboard objectives add svm_ep.e.freezed_display_order dummy
scoreboard objectives add svm_ep.e.haunted dummy
scoreboard objectives add svm_ep.e.fighting_style dummy
scoreboard objectives add svm_ep.e.fighting_style_quick_fov dummy
scoreboard objectives add svm_ep.e.flora_creaking_heart dummy
scoreboard objectives add svm_ep.e.fighting_style_awakening dummy
scoreboard objectives add svm_ep.e.cobwebed dummy
scoreboard objectives add svm_ep.e.cobwebed_display_order dummy
scoreboard objectives add svm_ep.e.infinite_void_fov dummy
scoreboard objectives add svm_ep.e.infinite_void dummy
scoreboard objectives add svm_ep.e.wet dummy
scoreboard objectives add svm_ep.e.wet_splashed dummy

#QUESTS
scoreboard objectives add svm_ep.q.kill_power_mobs dummy
scoreboard objectives add svm_ep.q.kill_swordsmen dummy


scoreboard objectives add svm_ep.clear_slowness dummy
scoreboard objectives add svm_ep.clear_levitation dummy
scoreboard objectives add svm_ep.clear_speed dummy
scoreboard objectives add svm_ep.clear_blindness dummy
scoreboard objectives add svm_ep.clear_strength dummy
scoreboard objectives add svm_ep.sword_particle dummy
scoreboard objectives add svm_ep.miracle dummy
scoreboard objectives add svm_ep.blessing dummy
scoreboard objectives add svm_ep.talent dummy
scoreboard objectives add svm_ep.bamblock dummy
scoreboard objectives add svm_ep.item_display_type dummy

#STRUCTURES
scoreboard objectives add svm_ep.colloseum_build dummy
#NPCs
scoreboard objectives add svm_ep.walking_frame dummy
scoreboard objectives add svm_ep.dialogue dummy
scoreboard objectives add svm_ep.npc_state dummy
scoreboard objectives add svm_ep.npc dummy
scoreboard objectives add svm_ep.npc_strength dummy
scoreboard objectives add svm_ep.npc.adapter.attacked_by_distance dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.distance.lvl dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.distance.progress dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.damage.lvl dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.damage.progress dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.damage.progress_to_make dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.poison.lvl dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.poison.progress dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.poison.progress_to_make dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.fire.lvl dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.fire.progress dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.fire.progress_to_make dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.not_on_ground.lvl dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.not_on_ground.progress dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.not_on_ground.progress_to_make dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.strength.lvl dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.strength.progress dummy
scoreboard objectives add svm_ep.npc.adapter.adaptation.strength.progress_to_make dummy
scoreboard objectives add svm_ep.npc.adapter.targeted_by dummy


scoreboard objectives add svm_ep.npc.adapter.adapted dummy
scoreboard objectives add svm_ep.npc.adapter.dash_cooldown dummy
scoreboard objectives add svm_ep.npc.adapter.slash_cooldown dummy
#POWERS
scoreboard objectives add svm_ep.p.silenced dummy
scoreboard objectives add svm_ep.p.moveset dummy
scoreboard objectives add svm_ep.p.awakened dummy


scoreboard objectives add svm_ep.selected_ability dummy
scoreboard objectives add svm_ep.last_shift_click dummy
scoreboard objectives add svm_ep.held_item_ability dummy

scoreboard objectives add svm_ep.selected_hotbar dummy
scoreboard objectives add svm_ep.ability0 dummy
scoreboard objectives add svm_ep.ability1 dummy
scoreboard objectives add svm_ep.ability2 dummy
scoreboard objectives add svm_ep.ability3 dummy
scoreboard objectives add svm_ep.ability4 dummy
scoreboard objectives add svm_ep.ability5 dummy
scoreboard objectives add svm_ep.ability6 dummy
scoreboard objectives add svm_ep.ability7 dummy
scoreboard objectives add svm_ep.ability8 dummy
scoreboard objectives add svm_ep.ability0.sneak dummy
scoreboard objectives add svm_ep.ability1.sneak dummy
scoreboard objectives add svm_ep.ability2.sneak dummy
scoreboard objectives add svm_ep.ability3.sneak dummy
scoreboard objectives add svm_ep.ability4.sneak dummy
scoreboard objectives add svm_ep.ability5.sneak dummy
scoreboard objectives add svm_ep.ability6.sneak dummy
scoreboard objectives add svm_ep.ability7.sneak dummy
scoreboard objectives add svm_ep.ability8.sneak dummy
scoreboard objectives add svm_ep.ability0.sprint dummy
scoreboard objectives add svm_ep.ability1.sprint dummy
scoreboard objectives add svm_ep.ability2.sprint dummy
scoreboard objectives add svm_ep.ability3.sprint dummy
scoreboard objectives add svm_ep.ability4.sprint dummy
scoreboard objectives add svm_ep.ability5.sprint dummy
scoreboard objectives add svm_ep.ability6.sprint dummy
scoreboard objectives add svm_ep.ability7.sprint dummy
scoreboard objectives add svm_ep.ability8.sprint dummy

scoreboard objectives add svm_ep.selected_ability.general dummy
scoreboard objectives add svm_ep.selected_ability.sneak dummy
scoreboard objectives add svm_ep.selected_ability.sprint dummy

scoreboard objectives add svm_ep.p.npc_use_delay1 dummy
scoreboard objectives add svm_ep.p.npc_use_delay2 dummy
scoreboard objectives add svm_ep.p.npc_use_delay3 dummy
scoreboard objectives add svm_ep.p.npc_use_delay dummy

#PHASE
scoreboard objectives add svm_ep.p.phase_ability_01_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_02_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_03_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_04_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_05_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_06_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_07_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_08_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_09_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_10_delay dummy
scoreboard objectives add svm_ep.p.phase_ability_11_delay dummy
scoreboard objectives add svm_ep.p.phase_awakening_lenght dummy
scoreboard objectives add svm_ep.p.phase_used_smash dummy

#LIGHTNING
scoreboard objectives add svm_ep.p.lightning_ability_01_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_02_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_03_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_04_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_05_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_06_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_07_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_08_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_09_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_10_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_11_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_12_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_13_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_14_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_15_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_16_delay dummy
scoreboard objectives add svm_ep.p.lightning_ability_17_delay dummy
scoreboard objectives add svm_ep.p.lightning_placed_count dummy
scoreboard objectives add svm_ep.p.lightning_electric_string_direction dummy
scoreboard objectives add svm_ep.p.lightning_string_charge dummy
scoreboard objectives add svm_ep.p.lightning_charge dummy
scoreboard objectives add svm_ep.p.lightning_charge_level dummy
scoreboard objectives add svm_ep.p.lightning_foreshadowing dummy
scoreboard objectives add svm_ep.p.lightning_foreshadowing_stage dummy
scoreboard objectives add svm_ep.p.lightning_foreshadowing_frame dummy

#FLORA
scoreboard objectives add svm_ep.p.flora_ability_01_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_02_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_03_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_04_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_05_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_06_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_07_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_08_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_09_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_10_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_11_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_12_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_13_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_14_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_15_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_16_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_17_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_18_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_19_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_20_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_21_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_22_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_23_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_24_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_25_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_26_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_27_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_28_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_29_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_30_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_31_delay dummy
scoreboard objectives add svm_ep.p.flora_ability_32_delay dummy
scoreboard objectives add svm_ep.p.flora_slashes_stage dummy
scoreboard objectives add svm_ep.p.flora_tree_size1 dummy
scoreboard objectives add svm_ep.p.flora_tree_size2 dummy
scoreboard objectives add svm_ep.p.flora_tree_size3 dummy
scoreboard objectives add svm_ep.p.flora_destroyed_logs dummy
scoreboard objectives add svm_ep.p.flora_rooted_bridge_direction dummy
scoreboard objectives add svm_ep.p.flora_junglification dummy
scoreboard objectives add svm_ep.p.flora_blooming_effect dummy
scoreboard objectives add svm_ep.p.flora_blooming_collect dummy
scoreboard objectives add svm_ep.p.flora_blooming_collect dummy
scoreboard objectives add svm_ep.p.flora_climate dummy
scoreboard objectives add svm_ep.p.flora_item dummy
scoreboard objectives add svm_ep.p.flora_item_section dummy
scoreboard objectives add svm_ep.p.flora_creation dummy
scoreboard objectives add svm_ep.p.flora_creation_length dummy
scoreboard objectives add svm_ep.p.flora_creation_specific dummy
scoreboard objectives add svm_ep.p.flora_tree_size dummy
scoreboard objectives add svm_ep.p.flora_tree_range dummy
scoreboard objectives add svm_ep.p.flora_flower_field_effect dummy
scoreboard objectives add svm_ep.p.flora_grass_step dummy
scoreboard objectives add svm_ep.p.flora_inescapable_garden_castor dummy
scoreboard objectives add svm_ep.p.flora_inescapable_garden_mode dummy
scoreboard objectives add svm_ep.p.flora_inescapable_garden_mode_change_tick dummy
scoreboard objectives add svm_ep.p.flora_inescapable_garden_power dummy
scoreboard objectives add svm_ep.p.flora_mangrove_tower_variant_charge dummy

scoreboard objectives add svm_ep.p.flora_plant_growth_range.lvl dummy
scoreboard objectives add svm_ep.p.flora_plant_growth_range.score dummy
scoreboard objectives add svm_ep.p.flora_plant_growth_success_rate.score dummy
scoreboard objectives add svm_ep.p.flora_score dummy
scoreboard objectives add svm_ep.p.flora_selected_climate_ability dummy
scoreboard objectives add svm_ep.p.flora_piercing_vine_count dummy
scoreboard objectives add svm_ep.p.flora_harvest_type dummy
scoreboard objectives add svm_ep.p.flora_harvest_max_length_prev dummy
scoreboard objectives add svm_ep.p.flora_harvest_max dummy
scoreboard objectives add svm_ep.p.flora_manipulation_type dummy
scoreboard objectives add svm_ep.p.flora_manipulation_tick dummy
scoreboard objectives add svm_ep.p.flora_manipulation_leaves_speed dummy
scoreboard objectives add svm_ep.p.flora_manipulation_leaves_knock dummy

#SLIME
scoreboard objectives add svm_ep.p.slime_ability_01_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_02_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_03_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_04_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_05_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_06_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_07_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_08_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_09_delay dummy
scoreboard objectives add svm_ep.p.slime_ability_10_delay dummy
scoreboard objectives add svm_ep.p.slime_rain_count dummy
scoreboard objectives add svm_ep.p.slime_movement dummy

#EXPLOSION
scoreboard objectives add svm_ep.p.explosion_ability_01_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_02_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_03_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_04_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_05_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_06_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_07_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_08_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_09_delay dummy
scoreboard objectives add svm_ep.p.explosion_ability_10_delay dummy
scoreboard objectives add svm_ep.p.explosion_bullet_charge dummy
scoreboard objectives add svm_ep.p.explosion_barrier_effect dummy
scoreboard objectives add svm_ep.p.explosion_small_charge dummy
scoreboard objectives add svm_ep.p.explosion_launch_charge dummy
scoreboard objectives add svm_ep.p.explosion_destroyer_charge dummy
scoreboard objectives add svm_ep.p.explosion_destroyer_charge_frame dummy
scoreboard objectives add svm_ep.p.explosion_destroyer_remove_mana dummy
scoreboard objectives add svm_ep.p.explosion_destroyer_uncharge_delay dummy

#ICE
scoreboard objectives add svm_ep.p.ice_ability_01_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_02_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_03_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_04_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_05_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_06_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_07_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_08_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_09_delay dummy
scoreboard objectives add svm_ep.p.ice_ability_10_delay dummy
scoreboard objectives add svm_ep.p.iceberg_state dummy
scoreboard objectives add svm_ep.p.iceberg_charge dummy
scoreboard objectives add svm_ep.p.iceberg_charged dummy
scoreboard objectives add svm_ep.p.ice_created dummy
scoreboard objectives add svm_ep.p.ice_created_max dummy
scoreboard objectives add svm_ep.p.ice_slide dummy
scoreboard objectives add svm_ep.p.ice_freeze dummy

#GRAVITY
scoreboard objectives add svm_ep.p.gravity_ability_01_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_02_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_03_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_04_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_05_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_06_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_07_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_08_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_09_delay dummy
scoreboard objectives add svm_ep.p.gravity_ability_10_delay dummy
scoreboard objectives add svm_ep.p.gravity_repel_zone dummy
scoreboard objectives add svm_ep.p.gravity_repel_zone_drain dummy
scoreboard objectives add svm_ep.p.gravity_low dummy
scoreboard objectives add svm_ep.p.gravity_low_drain dummy
scoreboard objectives add svm_ep.p.gravity_punch dummy
scoreboard objectives add svm_ep.p.gravity_punched_normal dummy
scoreboard objectives add svm_ep.p.gravity_punched_reverse dummy
scoreboard objectives add svm_ep.p.gravity_pull_charge dummy
scoreboard objectives add svm_ep.p.gravity_field_strength dummy
scoreboard objectives add svm_ep.p.gravity_field_color dummy
scoreboard objectives add svm_ep.p.gravity_field_color_reverted dummy
scoreboard objectives add svm_ep.p.gravity_field_reverted dummy
scoreboard objectives add svm_ep.p.gravity_strengthen_type dummy
scoreboard objectives add svm_ep.p.gravity_revert dummy
scoreboard objectives add svm_ep.p.gravity_field_stripe_direction_x dummy
scoreboard objectives add svm_ep.p.gravity_field_stripe_direction_y dummy
scoreboard objectives add svm_ep.p.gravity_field_compress dummy

#HARPIE
scoreboard objectives add svm_ep.p.harpie_ability_01_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_02_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_03_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_04_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_05_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_06_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_07_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_08_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_09_delay dummy
scoreboard objectives add svm_ep.p.harpie_ability_10_delay dummy
scoreboard objectives add svm_ep.p.harpie_movement dummy
scoreboard objectives add svm_ep.p.harpie_grabbed_by_id dummy

#DIMENSION TRAVELER
scoreboard objectives add svm_ep.p.dimension_traveler_ability_01_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_02_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_03_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_04_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_05_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_06_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_07_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_08_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_09_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_ability_10_delay dummy
scoreboard objectives add svm_ep.p.dimension_traveler_gate_destination dummy
scoreboard objectives add svm_ep.p.dimension_front_delay dummy
scoreboard objectives add svm_ep.dimension_cherry_island_id dummy
scoreboard objectives add svm_ep.dimension_brought_by_id dummy

#FIRE
scoreboard objectives add svm_ep.p.fire_ability_01_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_02_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_03_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_04_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_05_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_06_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_07_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_08_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_09_delay dummy
scoreboard objectives add svm_ep.p.fire_ability_10_delay dummy
scoreboard objectives add svm_ep.p.fire_arms dummy
scoreboard objectives add svm_ep.p.fire_on_fire dummy
scoreboard objectives add svm_ep.p.fire_barrage_bullets dummy
scoreboard objectives add svm_ep.p.fire_barrage_charge dummy
scoreboard objectives add svm_ep.p.fire_barrage_charge_max dummy
scoreboard objectives add svm_ep.p.fire_ray dummy

#VOID
scoreboard objectives add svm_ep.p.void_ability_01_delay dummy
scoreboard objectives add svm_ep.p.void_ability_02_delay dummy
scoreboard objectives add svm_ep.p.void_ability_03_delay dummy
scoreboard objectives add svm_ep.p.void_ability_04_delay dummy
scoreboard objectives add svm_ep.p.void_ability_05_delay dummy
scoreboard objectives add svm_ep.p.void_ability_06_delay dummy
scoreboard objectives add svm_ep.p.void_ability_07_delay dummy
scoreboard objectives add svm_ep.p.void_ability_08_delay dummy
scoreboard objectives add svm_ep.p.void_ability_09_delay dummy
scoreboard objectives add svm_ep.p.void_ability_10_delay dummy
scoreboard objectives add svm_ep.p.void_charging_charge dummy
scoreboard objectives add svm_ep.p.void_step_charge dummy
scoreboard objectives add svm_ep.p.void_in_black_hole dummy
scoreboard objectives add svm_ep.p.void_black_hole_distance dummy

#TIME
scoreboard objectives add svm_ep.p.time_ability_01_delay dummy
scoreboard objectives add svm_ep.p.time_ability_02_delay dummy
scoreboard objectives add svm_ep.p.time_ability_03_delay dummy
scoreboard objectives add svm_ep.p.time_ability_04_delay dummy
scoreboard objectives add svm_ep.p.time_ability_05_delay dummy
scoreboard objectives add svm_ep.p.time_ability_06_delay dummy
scoreboard objectives add svm_ep.p.time_ability_07_delay dummy
scoreboard objectives add svm_ep.p.time_ability_08_delay dummy
scoreboard objectives add svm_ep.p.time_ability_09_delay dummy
scoreboard objectives add svm_ep.p.time_ability_10_delay dummy
scoreboard objectives add svm_ep.p.time_stop_charge dummy
scoreboard objectives add svm_ep.p.time_accelerated dummy
scoreboard objectives add svm_ep.p.time_accelerated_level dummy
scoreboard objectives add svm_ep.p.time_revert dummy

#HEALING
scoreboard objectives add svm_ep.p.healing_ability_01_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_02_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_03_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_04_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_05_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_06_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_07_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_08_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_09_delay dummy
scoreboard objectives add svm_ep.p.healing_ability_10_delay dummy
scoreboard objectives add svm_ep.p.healing_aura dummy
scoreboard objectives add svm_ep.p.healing_marked_by dummy
scoreboard objectives add svm_ep.p.healing_marked_for dummy
scoreboard objectives add svm_ep.p.healing_immortality dummy

#DEATH
scoreboard objectives add svm_ep.p.death_ability_01_delay dummy
scoreboard objectives add svm_ep.p.death_ability_02_delay dummy
scoreboard objectives add svm_ep.p.death_ability_03_delay dummy
scoreboard objectives add svm_ep.p.death_ability_04_delay dummy
scoreboard objectives add svm_ep.p.death_ability_05_delay dummy
scoreboard objectives add svm_ep.p.death_ability_06_delay dummy
scoreboard objectives add svm_ep.p.death_ability_07_delay dummy
scoreboard objectives add svm_ep.p.death_ability_08_delay dummy
scoreboard objectives add svm_ep.p.death_ability_09_delay dummy
scoreboard objectives add svm_ep.p.death_ability_10_delay dummy
scoreboard objectives add svm_ep.p.death_unsealed_reaper dummy

#TELEKINESIS
scoreboard objectives add svm_ep.p.telekinesis_ability_01_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_02_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_03_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_04_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_05_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_06_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_07_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_08_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_09_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ability_10_delay dummy
scoreboard objectives add svm_ep.p.telekinesis_ground_pull_size dummy


#COPY
scoreboard objectives add svm_ep.p.copy_ability_01_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_02_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_03_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_04_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_05_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_06_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_07_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_08_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_09_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_10_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_11_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_12_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_13_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_14_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_15_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_16_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_17_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_18_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_19_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_20_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_21_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_22_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_23_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_24_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_25_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_26_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_27_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_28_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_29_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_30_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_31_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_32_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_33_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_34_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_35_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_36_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_37_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_38_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_39_delay dummy
scoreboard objectives add svm_ep.p.copy_ability_40_delay dummy

scoreboard objectives add svm_ep.p.copy_ability_01_count dummy
scoreboard objectives add svm_ep.p.copy_ability_02_count dummy
scoreboard objectives add svm_ep.p.copy_ability_03_count dummy
scoreboard objectives add svm_ep.p.copy_ability_04_count dummy
scoreboard objectives add svm_ep.p.copy_ability_05_count dummy
scoreboard objectives add svm_ep.p.copy_ability_06_count dummy
scoreboard objectives add svm_ep.p.copy_ability_07_count dummy
scoreboard objectives add svm_ep.p.copy_ability_08_count dummy
scoreboard objectives add svm_ep.p.copy_ability_09_count dummy
scoreboard objectives add svm_ep.p.copy_ability_10_count dummy
scoreboard objectives add svm_ep.p.copy_ability_11_count dummy
scoreboard objectives add svm_ep.p.copy_ability_12_count dummy
scoreboard objectives add svm_ep.p.copy_ability_13_count dummy
scoreboard objectives add svm_ep.p.copy_ability_14_count dummy
scoreboard objectives add svm_ep.p.copy_ability_15_count dummy
scoreboard objectives add svm_ep.p.copy_ability_16_count dummy
scoreboard objectives add svm_ep.p.copy_ability_17_count dummy
scoreboard objectives add svm_ep.p.copy_ability_18_count dummy
scoreboard objectives add svm_ep.p.copy_ability_19_count dummy
scoreboard objectives add svm_ep.p.copy_ability_20_count dummy
scoreboard objectives add svm_ep.p.copy_ability_21_count dummy
scoreboard objectives add svm_ep.p.copy_ability_22_count dummy
scoreboard objectives add svm_ep.p.copy_ability_23_count dummy
scoreboard objectives add svm_ep.p.copy_ability_24_count dummy
scoreboard objectives add svm_ep.p.copy_ability_25_count dummy
scoreboard objectives add svm_ep.p.copy_ability_26_count dummy
scoreboard objectives add svm_ep.p.copy_ability_27_count dummy
scoreboard objectives add svm_ep.p.copy_ability_28_count dummy
scoreboard objectives add svm_ep.p.copy_ability_29_count dummy
scoreboard objectives add svm_ep.p.copy_ability_30_count dummy
scoreboard objectives add svm_ep.p.copy_ability_31_count dummy
scoreboard objectives add svm_ep.p.copy_ability_32_count dummy
scoreboard objectives add svm_ep.p.copy_ability_33_count dummy
scoreboard objectives add svm_ep.p.copy_ability_34_count dummy
scoreboard objectives add svm_ep.p.copy_ability_35_count dummy
scoreboard objectives add svm_ep.p.copy_ability_36_count dummy
scoreboard objectives add svm_ep.p.copy_ability_37_count dummy
scoreboard objectives add svm_ep.p.copy_ability_38_count dummy
scoreboard objectives add svm_ep.p.copy_ability_39_count dummy
scoreboard objectives add svm_ep.p.copy_ability_40_count dummy


scoreboard objectives add svm_ep.p.copy_ability_01_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_02_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_03_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_04_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_05_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_06_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_07_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_08_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_09_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_10_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_11_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_12_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_13_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_14_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_15_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_16_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_17_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_18_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_19_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_20_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_21_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_22_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_23_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_24_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_25_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_26_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_27_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_28_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_29_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_30_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_31_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_32_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_33_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_34_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_35_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_36_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_37_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_38_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_39_drain dummy
scoreboard objectives add svm_ep.p.copy_ability_40_drain dummy


scoreboard objectives add svm_ep.p.copy_max_copied_abilities dummy
scoreboard objectives add svm_ep.p.copy_mob_cooldown dummy
scoreboard objectives add svm_ep.p.copy_underwater_adaptation dummy
scoreboard objectives add svm_ep.p.copy_night_vision dummy
scoreboard objectives add svm_ep.p.copy_fire_adaptation dummy
scoreboard objectives add svm_ep.p.copy_invisibility dummy
scoreboard objectives add svm_ep.p.copy_withering_touch dummy
scoreboard objectives add svm_ep.p.copy_shulker_bullet_targeted_by dummy
scoreboard objectives add svm_ep.p.copy_withering_touch dummy



#HEALING
scoreboard objectives add svm_ep.p.water_ability_01_delay dummy
scoreboard objectives add svm_ep.p.water_ability_02_delay dummy
scoreboard objectives add svm_ep.p.water_ability_03_delay dummy
scoreboard objectives add svm_ep.p.water_ability_04_delay dummy
scoreboard objectives add svm_ep.p.water_ability_05_delay dummy
scoreboard objectives add svm_ep.p.water_ability_06_delay dummy
scoreboard objectives add svm_ep.p.water_ability_07_delay dummy
scoreboard objectives add svm_ep.p.water_ability_08_delay dummy
scoreboard objectives add svm_ep.p.water_ability_09_delay dummy
scoreboard objectives add svm_ep.p.water_ability_10_delay dummy
scoreboard objectives add svm_ep.p.water_flowing_movement dummy
scoreboard objectives add svm_ep.p.water_collected dummy
scoreboard objectives add svm_ep.p.water_droplet_size dummy
scoreboard objectives add svm_ep.p.water_droplet_size_charge dummy
scoreboard objectives add svm_ep.p.water_manipulation_state dummy
scoreboard objectives add svm_ep.p.water_manipulation_tick dummy
scoreboard objectives add svm_ep.p.water_whirlpool_size dummy
scoreboard objectives add svm_ep.p.water_manipulation_ice_range.score dummy
scoreboard objectives add svm_ep.p.water_manipulation_ice_range.lvl dummy
scoreboard objectives add svm_ep.p.water_manipulation_ice_success_rate.score dummy






#4FUN
scoreboard objectives add svm_ep.p.4fun_ability_01_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_02_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_03_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_04_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_05_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_06_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_07_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_08_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_09_delay dummy
scoreboard objectives add svm_ep.p.4fun_ability_10_delay dummy

#NON POWER DELAY
scoreboard objectives add svm_ep.non_power.ability_9997_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9996_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9995_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9994_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9993_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9992_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9991_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9990_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9989_delay dummy
scoreboard objectives add svm_ep.non_power.ability_9988_delay dummy


#BOSSBAR
bossbar add lightning_god [{"text":"T","color":"aqua"},{"text":"h","color":"#84FFFF"},{"text":"u","color":"#A9FFFF"},{"text":"n","color":"#C3FFFF"},{"text":"de","color":"#DAFFFF"},{"text":"r","color":"#C3FFFF"},{"text":" G","color":"#A9FFFF"},{"text":"o","color":"#84FFFF"},{"text":"d","color":"aqua"}]
bossbar set minecraft:lightning_god visible false
bossbar set minecraft:lightning_god color blue
bossbar add svm_ep:inescapable_garden [{"text":" I","color":"#268600"},{"text":"n","color":"#52991F"},{"text":"e","color":"#77A93E"},{"text":"sc","color":"#8CBC60"},{"text":"a","color":"#A2C577"},{"text":"p","color":"#BDD594"},{"text":"a","color":"#D6E5AE"},{"text":"bl","color":"#EEF6C8"},{"text":"e","color":"#D6E5AE"},{"text":" G","color":"#BDD594"},{"text":"a","color":"#A2C577"},{"text":"r","color":"#8CBC60"},{"text":"d","color":"#77A93E"},{"text":"e","color":"#52991F"},{"text":"n ","color":"#268600"},{"text":"|","color":"gray"}]
bossbar set svm_ep:inescapable_garden visible false
bossbar set svm_ep:inescapable_garden color green
bossbar set svm_ep:inescapable_garden max 1000


#TEAMS
team add svm_ep.calcite_guardians
team modify svm_ep.calcite_guardians friendlyFire false
team add svm_ep.cherry_guardians
team modify svm_ep.cherry_guardians friendlyFire false

team add svm_ep.power_user_mob
team modify svm_ep.power_user_mob friendlyFire false

team add svm.no_collision
team modify svm.no_collision collisionRule never

execute if score teamNicknames svm_ep.gamerule matches 0 run function svm_ep:menu/cosmetics/team_nicknames/off
execute unless score teamNicknames svm_ep.gamerule matches 0 run function svm_ep:menu/cosmetics/team_nicknames/on

#NUMBERS

scoreboard players set %20000 svm_ep.numbers 20000
scoreboard players set %10000 svm_ep.numbers 10000
scoreboard players set %1100 svm_ep.numbers 1100
scoreboard players set %899 svm_ep.numbers 899
scoreboard players set %699 svm_ep.numbers 699
scoreboard players set %180 svm_ep.numbers 180
scoreboard players set %780 svm_ep.numbers 780
scoreboard players set %680 svm_ep.numbers 680
scoreboard players set %500 svm_ep.numbers 500
scoreboard players set %200 svm_ep.numbers 200
scoreboard players set %100 svm_ep.numbers 100
scoreboard players set %90 svm_ep.numbers 90
scoreboard players set %80 svm_ep.numbers 80
scoreboard players set %70 svm_ep.numbers 70
scoreboard players set %60 svm_ep.numbers 60
scoreboard players set %50 svm_ep.numbers 50
scoreboard players set %40 svm_ep.numbers 40
scoreboard players set %30 svm_ep.numbers 30
scoreboard players set %20 svm_ep.numbers 20
scoreboard players set %19 svm_ep.numbers 19
scoreboard players set %18 svm_ep.numbers 18
scoreboard players set %17 svm_ep.numbers 17
scoreboard players set %16 svm_ep.numbers 16
scoreboard players set %15 svm_ep.numbers 15
scoreboard players set %14 svm_ep.numbers 14
scoreboard players set %13 svm_ep.numbers 13
scoreboard players set %12 svm_ep.numbers 12
scoreboard players set %11 svm_ep.numbers 11
scoreboard players set %10 svm_ep.numbers 10
scoreboard players set %9 svm_ep.numbers 9
scoreboard players set %8 svm_ep.numbers 8
scoreboard players set %7 svm_ep.numbers 7
scoreboard players set %6 svm_ep.numbers 6
scoreboard players set %5 svm_ep.numbers 5
scoreboard players set %4 svm_ep.numbers 4
scoreboard players set %3 svm_ep.numbers 3
scoreboard players set %2 svm_ep.numbers 2
scoreboard players set %1 svm_ep.numbers 1
scoreboard players set %0 svm_ep.numbers 0
scoreboard players set %-1 svm_ep.numbers -1
scoreboard players set %-2 svm_ep.numbers -2
scoreboard players set %-3 svm_ep.numbers -3

scoreboard players set %junglification_time_multiplier svm_ep.world_settings 15
scoreboard players set %junglification_time_cap svm_ep.world_settings 1500
scoreboard players set %extra_slimes_divisor svm_ep.world_settings 3
scoreboard players set %extra_explosion_train_divisor svm_ep.world_settings 2
scoreboard players set %slime_rain_delay_multiplier svm_ep.world_settings 5 
scoreboard players set %small_explosion_damage_multiplier svm_ep.world_settings 1
scoreboard players set %small_explosion_damage_divisor svm_ep.world_settings 5
scoreboard players set %small_explosion_damage_divisor2 svm_ep.world_settings 20
scoreboard players set %small_explosion_damage_multiplicator svm_ep.world_settings 12
scoreboard players set %explosion_bullet_damage_divisor svm_ep.world_settings 3
scoreboard players set %explosion_bullet_damage_divisor2 svm_ep.world_settings 20
scoreboard players set %dimension_punch_damage_multiplier svm_ep.world_settings 2
scoreboard players set %dimension_punch_damage_divisor svm_ep.world_settings 3
scoreboard players set %iceberg_charging_speed_divisor svm_ep.world_settings 2
scoreboard players set %iceberg_max_charge_level_divisor svm_ep.world_settings 2
scoreboard players set %iceberg_max_charge_level_multiplier svm_ep.world_settings 3
scoreboard players set %ice_shatter_cost_multiplier svm_ep.world_settings 5
scoreboard players set %ice_shatter_cost_divisor svm_ep.world_settings 1
scoreboard players set %launched_ice_damage_divisor svm_ep.world_settings 20
scoreboard players set %cherry_island_offset svm_ep.world_settings 250
scoreboard players set %slime_rain_cap svm_ep.world_settings 100
scoreboard players set %double_shift_time svm_ep.world_settings 4
scoreboard players set %thunder_shot_windup_divisor svm_ep.world_settings 5
scoreboard players set %iceberg_max_size svm_ep.world_settings 35
scoreboard players set %fire_extinguish_cost_divisor svm_ep.world_settings 2
scoreboard players set %fire_leap_with_fire_arms_multiplicator svm_ep.world_settings 2
scoreboard players set %flora_inescapable_garden_power_multiply svm_ep.world_settings 60
scoreboard players set %flora_inescapable_garden_power_divide svm_ep.world_settings 1
scoreboard players set %oak_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %oak_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %spruce_tree_branch_multiplicator svm_ep.world_settings 2
scoreboard players set %spruce_tree_branch_divisor svm_ep.world_settings 3
scoreboard players set %birch_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %birch_tree_branch_divisor svm_ep.world_settings 5
scoreboard players set %cherry_tree_branch_multiplicator svm_ep.world_settings 2
scoreboard players set %cherry_tree_branch_divisor svm_ep.world_settings 1
scoreboard players set %azalea_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %azalea_tree_branch_divisor svm_ep.world_settings 3
scoreboard players set %dark_oak_tree_branch_multiplicator svm_ep.world_settings 9
scoreboard players set %dark_oak_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %jungle_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %jungle_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %mangrove_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %mangrove_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %warped_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %warped_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %crimson_tree_branch_multiplicator svm_ep.world_settings 4
scoreboard players set %crimson_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %acacia_tree_branch_multiplicator svm_ep.world_settings 6
scoreboard players set %acacia_tree_branch_divisor svm_ep.world_settings 7
scoreboard players set %acceleration_speed svm_ep.world_settings 110
scoreboard players set %tree_max_size svm_ep.world_settings 20
scoreboard players set %tree_charge_speed svm_ep.world_settings 25
scoreboard players set %mangrove_tower_windup_divisor svm_ep.world_settings 8
scoreboard players set %piercing_vine_ticks_without_amplification svm_ep.world_settings 7
scoreboard players set %piercing_vine_damage_divide svm_ep.world_settings 3
scoreboard players set %petals_of_peace_length_multiplier_per_tick svm_ep.world_settings 12
scoreboard players set %ice_breaker_smash_damage_multiplier svm_ep.world_settings 1
scoreboard players set %ice_breaker_smash_damage_divisor svm_ep.world_settings 7
scoreboard players set %regenerational_aura_healing_frequency svm_ep.world_settings 60
scoreboard players set %unsealed_reaper_cooldown_multiplier svm_ep.world_settings 1
scoreboard players set %unsealed_reaper_cooldown_divisor svm_ep.world_settings 3
scoreboard players set %ice_breaker_on_freezed_damage_multiplier svm_ep.world_settings 3
scoreboard players set %ice_breaker_on_freezed_damage_divisor svm_ep.world_settings 2
scoreboard players set %ice_creation_freeze_water_cost_multiplier svm_ep.world_settings 1
scoreboard players set %ice_creation_freeze_water_cost_divisor svm_ep.world_settings 5
scoreboard players set %thunder_passive_cooldown_multiplier svm_ep.world_settings 1
scoreboard players set %thunder_passive_cooldown_divisor svm_ep.world_settings 3
scoreboard players set %copy_copied_abilities_per_hp_multiplier svm_ep.world_settings 3
scoreboard players set %copy_copied_abilities_per_hp_divisor svm_ep.world_settings 4
scoreboard players set %explosion_launch_multiplier svm_ep.world_settings 150
scoreboard players set %explosion_launch_divisor svm_ep.world_settings 1
scoreboard players set %slash_charge_damage_multiplier svm_ep.world_settings 7
scoreboard players set %slash_charge_damage_divisor svm_ep.world_settings 3
scoreboard players set %slash_charge_size_multiplier svm_ep.world_settings 7
scoreboard players set %slash_charge_size_divisor svm_ep.world_settings 3
scoreboard players set %slash_barrage_damage_multiplier svm_ep.world_settings 3
scoreboard players set %slash_barrage_damage_divisor svm_ep.world_settings 7
scoreboard players set %time_stop_windup_multiplier svm_ep.world_settings 1
scoreboard players set %time_stop_windup_divisor svm_ep.world_settings 3
scoreboard players set %gravity_field_strengthen_cost_by_strength_multiplier svm_ep.world_settings 1
scoreboard players set %gravity_field_strengthen_cost_by_strength_divisor svm_ep.world_settings 8
scoreboard players set %copy_mob_cooldown svm_ep.world_settings 2460
scoreboard players set %copy_cobweb_launch_strength svm_ep.world_settings 31
scoreboard players set %copy_cobweb_launch_strength_player svm_ep.world_settings 120
scoreboard players set %copy_cobweb_launch_strength_on_launch svm_ep.world_settings 65
scoreboard players set %copy_cobweb_max_length svm_ep.world_settings 250
scoreboard players set %fire_barrage_max_storage svm_ep.world_settings 50
scoreboard players set %ice_creation_max_default svm_ep.world_settings 5
scoreboard players set %ice_creation_max_max svm_ep.world_settings 45
scoreboard players set %water_creation_flowing_movement_increase_by_water svm_ep.world_settings 25
scoreboard players set %water_manipulation_ice_range_max svm_ep.world_settings 150
scoreboard players set %water_manipulation_ice_range_default svm_ep.world_settings 15
scoreboard players set %water_manipulation_ice_range_level_divisor svm_ep.world_settings 450
scoreboard players set %flora_plant_growth_range_level_divisor svm_ep.world_settings 650
scoreboard players set %flora_plant_growth_range_default svm_ep.world_settings 17
scoreboard players set %flora_plant_growth_range_max svm_ep.world_settings 500
scoreboard players set %flora_piercing_vine_vines_max svm_ep.world_settings 15
scoreboard players set %flora_piercing_vine_vines_on_start svm_ep.world_settings 3
scoreboard players set %flora_piercing_vine_charge_speed svm_ep.world_settings 1
scoreboard players set %flora_piercing_vine_per_one svm_ep.world_settings 10
scoreboard players set %flora_vine_swing_strength_on_launch svm_ep.world_settings 400
scoreboard players set %flora_harvest_max_range svm_ep.world_settings 100


scoreboard players add %loaded svm_ep.world_settings 1
execute if score %loaded svm_ep.world_settings matches 1 run gamerule sendCommandFeedback false

#STORAGES
execute unless data storage svm_ep:mana_display input.mana_display run function svm_ep:menu/cosmetics/displays/mana/default2
execute unless data storage svm_ep:mana_display input.cooldown_display run function svm_ep:menu/cosmetics/displays/cooldown/default

#SETUP DIMENSION
execute unless data storage svm_ep:dimension id run data modify storage svm_ep:dimension id set value ["minecraft:overworld","minecraft:the_nether","minecraft:the_end"]

#data modify storage svm_ep:dimension name set value {"minecraft:overworld":0,"minecraft:the_nether":1,"minecraft:the_end":2}

#scoreboard objectives remove svm_ep.power.id
#scoreboard objectives add svm_ep.power.id dummy
#data remove storage svm_ep:power registered
data remove storage svm_ep:power roll
data modify storage svm_ep:power roll append value ""
data remove storage svm_ep:power id
data modify storage svm_ep:power id append value ""
data remove storage svm_ep:menu power
data remove storage svm_ep:menu chooser

function svm_ep:system/register_power {data:{"power":"phase",name:"Phasing",color:"#dbf4f4",obtain_function:"function svm_ep:power/phase/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"lightning",name:"Lightning",color:"#10E3FF",obtain_function:"function svm_ep:power/lightning/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"flora",name:"Flora",color:"#08f812",obtain_function:"function svm_ep:power/flora/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"slime",name:"Slime",color:"#08f85a",obtain_function:"function svm_ep:power/slime/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"explosion",name:"Explosion",color:"#fd7d27",obtain_function:"function svm_ep:power/explosion/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"ice",name:"Ice",color:"#4be6ff",obtain_function:"function svm_ep:power/ice/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"gravity",name:"Gravity",color:"#60ff8f",obtain_function:"function svm_ep:power/gravity/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"harpie",name:"Harpie",color:"#abeed5",obtain_function:"function svm_ep:power/harpie/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"dimension_traveler",name:"Dimension Traveler",color:"#bd6bff",obtain_function:"function svm_ep:power/dimension_traveler/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"fire",name:"Fire",color:"#ff6b0a",obtain_function:"function svm_ep:power/fire/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"void",name:"Void",color:"black",obtain_function:"function svm_ep:power/void/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"time",name:"Time",color:"red",obtain_function:"function svm_ep:power/time/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"healing",name:"Healing",color:"#ff2e6c",obtain_function:"function svm_ep:power/healing/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"death",name:"Death",color:"#170004",obtain_function:"function svm_ep:power/death/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"copy",name:"Copy",color:"yellow",obtain_function:"function svm_ep:power/copy/obtain",obtainable:true}}
function svm_ep:system/register_power {data:{"power":"water",name:"Water",color:"#0390fc",obtain_function:"function svm_ep:power/water/obtain",obtainable:true}}

function #svm_ep:register_powers
execute store result score %TOTAL_REGISTERED_POWERS svm_ep.world_settings if data storage svm_ep:power id[]
execute store result score %TOTAL_REGISTERED_ROLLABLE_POWERS svm_ep.world_settings if data storage svm_ep:power roll[]


#RESET AND RE-APPLY CUSTOM ABILITIES
scoreboard objectives remove svm_ep.ability.id
scoreboard objectives add svm_ep.ability.id dummy
data remove storage svm_ep:ability ability
data remove storage svm_ep:ability id
#ADD ABILITIES
function svm_ep:system/setup_ability {"id":"phasing_distortion",data:{only_item_ability:true,"name":"Phasing Distortion",cost:10,cooldown:2,"description":"Creates a cloud around the user","display":'{"text":" "},{"text":"P","color":"#95c4b6"},{"text":"h","color":"#a0cabd"},{"text":"a","color":"#abd1c5"},{"text":"s","color":"#b6d7cc"},{"text":"i","color":"#c1ded4"},{"text":"n","color":"#cde4db"},{"text":"g","color":"#d8ebe3"},{"text":" ","color":"#e3f1ea"},{"text":"D","color":"#eef8f2"},{"text":"i","color":"#fafffa"},{"text":"s","color":"#edf7f1"},{"text":"t","color":"#e0f0e9"},{"text":"o","color":"#d4e8e0"},{"text":"r","color":"#c7e1d8"},{"text":"t","color":"#badacf"},{"text":"i","color":"#aed2c7"},{"text":"o","color":"#a1cbbe"},{"text":"n","color":"#95c4b6"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"P","strikethrough":true,"color":"#4d4d4d"},{"text":"h","strikethrough":true,"color":"#555555"},{"text":"a","strikethrough":true,"color":"#5e5e5e"},{"text":"s","strikethrough":true,"color":"#676767"},{"text":"i","strikethrough":true,"color":"#707070"},{"text":"n","strikethrough":true,"color":"#787878"},{"text":"g","strikethrough":true,"color":"#818181"},{"text":" ","strikethrough":true,"color":"#8a8a8a"},{"text":"D","strikethrough":true,"color":"#939393"},{"text":"i","strikethrough":true,"color":"#9c9c9c"},{"text":"s","strikethrough":true,"color":"#929292"},{"text":"t","strikethrough":true,"color":"#888888"},{"text":"o","strikethrough":true,"color":"#7e7e7e"},{"text":"r","strikethrough":true,"color":"#747474"},{"text":"t","strikethrough":true,"color":"#6a6a6a"},{"text":"i","strikethrough":true,"color":"#606060"},{"text":"o","strikethrough":true,"color":"#565656"},{"text":"n","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"lightning_flash",data:{only_item_ability:true,"name":"Lightning Flash",cost:40,cooldown:50,"description":"Dashes in front dealing lightning damage","display":'{"text":" "},{"text":"L","color":"#91fffd"},{"text":"i","color":"#a0fffc"},{"text":"g","color":"#affffc"},{"text":"h","color":"#befffb"},{"text":"t","color":"#cdfffb"},{"text":"n","color":"#dcfffa"},{"text":"i","color":"#ebfffa"},{"text":"n","color":"#fafffa"},{"text":"g","color":"#ebfffa"},{"text":" ","color":"#dcfffa"},{"text":"F","color":"#cdfffb"},{"text":"l","color":"#befffb"},{"text":"a","color":"#affffc"},{"text":"s","color":"#a0fffc"},{"text":"h","color":"#91fffd"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"L","strikethrough":true,"color":"#4d4d4d"},{"text":"i","strikethrough":true,"color":"#585858"},{"text":"g","strikethrough":true,"color":"#636363"},{"text":"h","strikethrough":true,"color":"#6e6e6e"},{"text":"t","strikethrough":true,"color":"#7a7a7a"},{"text":"n","strikethrough":true,"color":"#858585"},{"text":"i","strikethrough":true,"color":"#909090"},{"text":"n","strikethrough":true,"color":"#9c9c9c"},{"text":"g","strikethrough":true,"color":"#909090"},{"text":" ","strikethrough":true,"color":"#858585"},{"text":"F","strikethrough":true,"color":"#7a7a7a"},{"text":"l","strikethrough":true,"color":"#6e6e6e"},{"text":"a","strikethrough":true,"color":"#636363"},{"text":"s","strikethrough":true,"color":"#585858"},{"text":"h","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"piercing_thorns",data:{only_item_ability:true,"name":"Piercing Thorns",cost:15,cooldown:5,"description":"Launches thorns in front dealing damage","display":'{"text":" "},{"text":"P","color":"#006130"},{"text":"i","color":"#19774c"},{"text":"e","color":"#338e69"},{"text":"r","color":"#4da486"},{"text":"c","color":"#66bba3"},{"text":"i","color":"#80d1c0"},{"text":"n","color":"#9ae8dd"},{"text":"g","color":"#b4fffa"},{"text":" ","color":"#9ae8dd"},{"text":"T","color":"#80d1c0"},{"text":"h","color":"#66bba3"},{"text":"o","color":"#4da486"},{"text":"r","color":"#338e69"},{"text":"n","color":"#19774c"},{"text":"s","color":"#006130"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"P","strikethrough":true,"color":"#4d4d4d"},{"text":"i","strikethrough":true,"color":"#585858"},{"text":"e","strikethrough":true,"color":"#636363"},{"text":"r","strikethrough":true,"color":"#6e6e6e"},{"text":"c","strikethrough":true,"color":"#7a7a7a"},{"text":"i","strikethrough":true,"color":"#858585"},{"text":"n","strikethrough":true,"color":"#909090"},{"text":"g","strikethrough":true,"color":"#9c9c9c"},{"text":" ","strikethrough":true,"color":"#909090"},{"text":"T","strikethrough":true,"color":"#858585"},{"text":"h","strikethrough":true,"color":"#7a7a7a"},{"text":"o","strikethrough":true,"color":"#6e6e6e"},{"text":"r","strikethrough":true,"color":"#636363"},{"text":"n","strikethrough":true,"color":"#585858"},{"text":"s","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"weight_neutralizer",data:{only_item_ability:true,"name":"Weight Neutralizer",cost:30,cooldown:5,"description":"Lowers gravity for mobs in range","display":'{"text":" "},{"text":"W","color":"#009680"},{"text":"e","color":"#14a18d"},{"text":"i","color":"#28ad9b"},{"text":"g","color":"#3cb9a8"},{"text":"h","color":"#50c4b6"},{"text":"t","color":"#64d0c3"},{"text":" ","color":"#78dcd1"},{"text":"N","color":"#8ce7de"},{"text":"e","color":"#a0f3ec"},{"text":"u","color":"#b4fffa"},{"text":"t","color":"#9df1ea"},{"text":"r","color":"#87e4db"},{"text":"a","color":"#70d7cc"},{"text":"l","color":"#5acabd"},{"text":"i","color":"#43bdad"},{"text":"z","color":"#2db09e"},{"text":"e","color":"#16a38f"},{"text":"r","color":"#009680"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"W","strikethrough":true,"color":"#4d4d4d"},{"text":"e","strikethrough":true,"color":"#555555"},{"text":"i","strikethrough":true,"color":"#5e5e5e"},{"text":"g","strikethrough":true,"color":"#676767"},{"text":"h","strikethrough":true,"color":"#707070"},{"text":"t","strikethrough":true,"color":"#787878"},{"text":" ","strikethrough":true,"color":"#818181"},{"text":"N","strikethrough":true,"color":"#8a8a8a"},{"text":"e","strikethrough":true,"color":"#939393"},{"text":"u","strikethrough":true,"color":"#9c9c9c"},{"text":"t","strikethrough":true,"color":"#929292"},{"text":"r","strikethrough":true,"color":"#888888"},{"text":"a","strikethrough":true,"color":"#7e7e7e"},{"text":"l","strikethrough":true,"color":"#747474"},{"text":"i","strikethrough":true,"color":"#6a6a6a"},{"text":"z","strikethrough":true,"color":"#606060"},{"text":"e","strikethrough":true,"color":"#565656"},{"text":"r","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"gravity_inverter",data:{only_item_ability:true,"name":"Gravity Inverter",cost:45,cooldown:40,"description":"Reverts the gravity of mobs or gravity fields in front","display":'{"text":" "},{"text":"G","color":"#6b03fc"},{"text":"r","color":"#7c1dfc"},{"text":"a","color":"#8e38fc"},{"text":"v","color":"#a052fd"},{"text":"i","color":"#b26dfd"},{"text":"t","color":"#c488fd"},{"text":"y","color":"#d6a2fe"},{"text":" ","color":"#e8bdfe"},{"text":"I","color":"#fad8ff"},{"text":"n","color":"#e5b9fe"},{"text":"v","color":"#d19bfe"},{"text":"e","color":"#bc7cfd"},{"text":"r","color":"#a85efd"},{"text":"t","color":"#933ffc"},{"text":"e","color":"#7f21fc"},{"text":"r","color":"#6b03fc"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"G","strikethrough":true,"color":"#4d4d4d"},{"text":"r","strikethrough":true,"color":"#565656"},{"text":"a","strikethrough":true,"color":"#606060"},{"text":"v","strikethrough":true,"color":"#6a6a6a"},{"text":"i","strikethrough":true,"color":"#747474"},{"text":"t","strikethrough":true,"color":"#7e7e7e"},{"text":"y","strikethrough":true,"color":"#888888"},{"text":" ","strikethrough":true,"color":"#929292"},{"text":"I","strikethrough":true,"color":"#9c9c9c"},{"text":"n","strikethrough":true,"color":"#909090"},{"text":"v","strikethrough":true,"color":"#858585"},{"text":"e","strikethrough":true,"color":"#7a7a7a"},{"text":"r","strikethrough":true,"color":"#6e6e6e"},{"text":"t","strikethrough":true,"color":"#636363"},{"text":"e","strikethrough":true,"color":"#585858"},{"text":"r","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"thunder_shot",data:{only_item_ability:true,"name":"Thunder-Shot",cost:40,cooldown:300,"description":"Summons a lightning bolt at cursor","display":'{"text":" "},{"text":"T","color":"#fcf003"},{"text":"h","color":"#fcf126"},{"text":"u","color":"#fdf34a"},{"text":"n","color":"#fdf56d"},{"text":"d","color":"#fef691"},{"text":"e","color":"#fef8b4"},{"text":"r","color":"#fffad8"},{"text":"-","color":"#fef8ad"},{"text":"S","color":"#fdf682"},{"text":"h","color":"#fdf458"},{"text":"o","color":"#fcf22d"},{"text":"t","color":"#fcf003"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"T","strikethrough":true,"color":"#4d4d4d"},{"text":"h","strikethrough":true,"color":"#5a5a5a"},{"text":"u","strikethrough":true,"color":"#676767"},{"text":"n","strikethrough":true,"color":"#747474"},{"text":"d","strikethrough":true,"color":"#818181"},{"text":"e","strikethrough":true,"color":"#8e8e8e"},{"text":"r","strikethrough":true,"color":"#9c9c9c"},{"text":"-","strikethrough":true,"color":"#8c8c8c"},{"text":"S","strikethrough":true,"color":"#7c7c7c"},{"text":"h","strikethrough":true,"color":"#6c6c6c"},{"text":"o","strikethrough":true,"color":"#5c5c5c"},{"text":"t","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"cherry_blessing",data:{fighting_styles_can_use:false,only_item_ability:true,"name":"Cherry Blessing",cost:10,cooldown:40,"description":"Summons Cherry Guardians at nearby Pink Petals","display":'{"text":" "},{"text":"C","color":"#ff75a8"},{"text":"h","color":"#ff88b3"},{"text":"e","color":"#ff9bbf"},{"text":"r","color":"#ffaecb"},{"text":"r","color":"#ffc1d6"},{"text":"y","color":"#ffd4e2"},{"text":" ","color":"#ffe7ee"},{"text":"B","color":"#fffafa"},{"text":"l","color":"#ffe7ee"},{"text":"e","color":"#ffd4e2"},{"text":"s","color":"#ffc1d6"},{"text":"s","color":"#ffaecb"},{"text":"i","color":"#ff9bbf"},{"text":"n","color":"#ff88b3"},{"text":"g","color":"#ff75a8"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"C","strikethrough":true,"color":"#4d4d4d"},{"text":"h","strikethrough":true,"color":"#585858"},{"text":"e","strikethrough":true,"color":"#636363"},{"text":"r","strikethrough":true,"color":"#6e6e6e"},{"text":"r","strikethrough":true,"color":"#7a7a7a"},{"text":"y","strikethrough":true,"color":"#858585"},{"text":" ","strikethrough":true,"color":"#909090"},{"text":"B","strikethrough":true,"color":"#9c9c9c"},{"text":"l","strikethrough":true,"color":"#909090"},{"text":"e","strikethrough":true,"color":"#858585"},{"text":"s","strikethrough":true,"color":"#7a7a7a"},{"text":"s","strikethrough":true,"color":"#6e6e6e"},{"text":"i","strikethrough":true,"color":"#636363"},{"text":"n","strikethrough":true,"color":"#585858"},{"text":"g","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}



scoreboard players set %total_ids svm_ep.ability.id 10001
function svm_ep:system/setup_ability {"id":"mahoraga",data:{"name":"Mahoraga",cost:250,cooldown:8000,"description":"Summons a powerful entity capable of adapting to its environment and experiences","use_requirement":"Requires 250 Mana","unlock_requirement":"Not defined",unlock_id:20076,"display":'{"text":" "},{"text":"M","color":"#5a514f"},{"text":"a","color":"#837b79"},{"text":"h","color":"#aca5a4"},{"text":"o","color":"#d5cfcf"},{"text":"r","color":"#fffafa"},{"text":"a","color":"#c8c1c1"},{"text":"g","color":"#918988"},{"text":"a","color":"#5a514f"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"M","strikethrough":true,"color":"#4d4d4d"},{"text":"a","strikethrough":true,"color":"#606060"},{"text":"h","strikethrough":true,"color":"#747474"},{"text":"o","strikethrough":true,"color":"#888888"},{"text":"r","strikethrough":true,"color":"#9c9c9c"},{"text":"a","strikethrough":true,"color":"#818181"},{"text":"g","strikethrough":true,"color":"#676767"},{"text":"a","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"hollow_technique_purple",data:{"name":"Hollow Technique: Purple",cost:150,cooldown:740,"description":"Combines Lapse Blue with Reversal Red to create imaginary mass which disintegrates everything on its path","use_requirement":"Requires 150 Mana","unlock_requirement":"Not defined",unlock_id:20076,"display":'{"text":" "},{"text":"H","color":"#002ad1"},{"text":"o","color":"#1538d4"},{"text":"l","color":"#2a46d8"},{"text":"l","color":"#3f55dc"},{"text":"o","color":"#5463e0"},{"text":"w","color":"#6971e4"},{"text":" ","color":"#7f80e8"},{"text":"T","color":"#948eeb"},{"text":"e","color":"#a99cef"},{"text":"c","color":"#beabf3"},{"text":"h","color":"#d3b9f7"},{"text":"n","color":"#e8c7fb"},{"text":"i","color":"#fed6ff"},{"text":"q","color":"#f9c2e7"},{"text":"u","color":"#f5afd0"},{"text":"e","color":"#f19bb9"},{"text":":","color":"#ed88a2"},{"text":" ","color":"#e9748b"},{"text":"P","color":"#e56173"},{"text":"u","color":"#e14d5c"},{"text":"r","color":"#dd3a45"},{"text":"p","color":"#d9262e"},{"text":"l","color":"#d51317"},{"text":"e","color":"#d10000"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"H","strikethrough":true,"color":"#4d4d4d"},{"text":"o","strikethrough":true,"color":"#535353"},{"text":"l","strikethrough":true,"color":"#5a5a5a"},{"text":"l","strikethrough":true,"color":"#606060"},{"text":"o","strikethrough":true,"color":"#676767"},{"text":"w","strikethrough":true,"color":"#6d6d6d"},{"text":" ","strikethrough":true,"color":"#747474"},{"text":"T","strikethrough":true,"color":"#7b7b7b"},{"text":"e","strikethrough":true,"color":"#818181"},{"text":"c","strikethrough":true,"color":"#888888"},{"text":"h","strikethrough":true,"color":"#8e8e8e"},{"text":"n","strikethrough":true,"color":"#959595"},{"text":"i","strikethrough":true,"color":"#9c9c9c"},{"text":"q","strikethrough":true,"color":"#949494"},{"text":"u","strikethrough":true,"color":"#8d8d8d"},{"text":"e","strikethrough":true,"color":"#868686"},{"text":":","strikethrough":true,"color":"#7f7f7f"},{"text":" ","strikethrough":true,"color":"#787878"},{"text":"P","strikethrough":true,"color":"#707070"},{"text":"u","strikethrough":true,"color":"#696969"},{"text":"r","strikethrough":true,"color":"#626262"},{"text":"p","strikethrough":true,"color":"#5b5b5b"},{"text":"l","strikethrough":true,"color":"#545454"},{"text":"e","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"malevolent_shrine",data:{"name":"Malevolent Shrine",cost:200,cooldown:800,"description":"Opens an open domain which slashes every mob in radius","use_requirement":"Requires 200 Mana","unlock_requirement":"Not defined",unlock_id:20076,"display":'{"text":" "},{"text":"M","color":"#2b0605"},{"text":"a","color":"#42211f"},{"text":"l","color":"#5a3c39"},{"text":"e","color":"#715753"},{"text":"v","color":"#89726d"},{"text":"o","color":"#a08d87"},{"text":"l","color":"#b8a8a1"},{"text":"e","color":"#cfc3bb"},{"text":"n","color":"#e7ded5"},{"text":"t","color":"#fffaf0"},{"text":" ","color":"#e0d7ce"},{"text":"S","color":"#c2b4ac"},{"text":"h","color":"#a4918b"},{"text":"r","color":"#856e69"},{"text":"i","color":"#674b48"},{"text":"n","color":"#492826"},{"text":"e","color":"#2b0605"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"M","strikethrough":true,"color":"#4d4d4d"},{"text":"a","strikethrough":true,"color":"#555555"},{"text":"l","strikethrough":true,"color":"#5e5e5e"},{"text":"e","strikethrough":true,"color":"#676767"},{"text":"v","strikethrough":true,"color":"#707070"},{"text":"o","strikethrough":true,"color":"#787878"},{"text":"l","strikethrough":true,"color":"#818181"},{"text":"e","strikethrough":true,"color":"#8a8a8a"},{"text":"n","strikethrough":true,"color":"#939393"},{"text":"t","strikethrough":true,"color":"#9c9c9c"},{"text":" ","strikethrough":true,"color":"#909090"},{"text":"S","strikethrough":true,"color":"#858585"},{"text":"h","strikethrough":true,"color":"#7a7a7a"},{"text":"r","strikethrough":true,"color":"#6e6e6e"},{"text":"i","strikethrough":true,"color":"#636363"},{"text":"n","strikethrough":true,"color":"#585858"},{"text":"e","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"infinite_void",data:{"name":"Infinite Void",cost:150,cooldown:1200,"description":"Opens a Domain Expansion: Infinite Void which overloads the mobs inside with infinite information making them temporarily unable of action","use_requirement":"Requires 150 Mana","unlock_requirement":"Not defined",unlock_id:20076,can_use_during_ability:false,"display":'{"text":" ","color":"#4f4d4d"},{"text":"I","color":"#1e0e45"},{"text":"n","color":"#3a285f"},{"text":"f","color":"#56427a"},{"text":"i","color":"#725c94"},{"text":"n","color":"#8f77af"},{"text":"i","color":"#ab91c9"},{"text":"t","color":"#c7abe4"},{"text":"e","color":"#e4c6ff"},{"text":" ","color":"#cea1e5"},{"text":"V","color":"#b87dcc"},{"text":"o","color":"#a358b2"},{"text":"i","color":"#8d3499"},{"text":"d","color":"#781080"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"I","strikethrough":true,"color":"#4d4d4d"},{"text":"n","strikethrough":true,"color":"#585858"},{"text":"f","strikethrough":true,"color":"#636363"},{"text":"i","strikethrough":true,"color":"#6e6e6e"},{"text":"n","strikethrough":true,"color":"#7a7a7a"},{"text":"i","strikethrough":true,"color":"#858585"},{"text":"t","strikethrough":true,"color":"#909090"},{"text":"e","strikethrough":true,"color":"#9c9c9c"},{"text":" ","strikethrough":true,"color":"#8c8c8c"},{"text":"V","strikethrough":true,"color":"#7c7c7c"},{"text":"o","strikethrough":true,"color":"#6c6c6c"},{"text":"i","strikethrough":true,"color":"#5c5c5c"},{"text":"d","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"fire_resistance",data:{"name":"Fire Resistance",cost:30,cooldown:50,"description":"","use_requirement":"Requires 0 Mana","unlock_requirement":"Not defined",unlock_id:20076,can_use_during_ability:false,"display":'{"text":" ","color":"#4f4d4d"},{"text":"F","color":"#ff5b05"},{"text":"i","color":"#ff6d15"},{"text":"r","color":"#ff8025"},{"text":"e","color":"#ff9335"},{"text":" ","color":"#ffa646"},{"text":"R","color":"#ffb956"},{"text":"e","color":"#ffcc66"},{"text":"s","color":"#ffdf77"},{"text":"i","color":"#fccd66"},{"text":"s","color":"#f9bb56"},{"text":"t","color":"#f6a946"},{"text":"a","color":"#f39735"},{"text":"n","color":"#f08525"},{"text":"c","color":"#ed7315"},{"text":"e","color":"#eb6105"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"F","strikethrough":true,"color":"#4d4d4d"},{"text":"i","strikethrough":true,"color":"#585858"},{"text":"r","strikethrough":true,"color":"#636363"},{"text":"e","strikethrough":true,"color":"#6e6e6e"},{"text":" ","strikethrough":true,"color":"#7a7a7a"},{"text":"R","strikethrough":true,"color":"#858585"},{"text":"e","strikethrough":true,"color":"#909090"},{"text":"s","strikethrough":true,"color":"#9c9c9c"},{"text":"i","strikethrough":true,"color":"#909090"},{"text":"s","strikethrough":true,"color":"#858585"},{"text":"t","strikethrough":true,"color":"#7a7a7a"},{"text":"a","strikethrough":true,"color":"#6e6e6e"},{"text":"n","strikethrough":true,"color":"#636363"},{"text":"c","strikethrough":true,"color":"#585858"},{"text":"e","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}
function svm_ep:system/setup_ability {"id":"ground_pull",data:{"name":"Ground Pull",cost:50,cooldown:40,"description":"Pulls blocks toward your cursor","use_requirement":"Requires 50 Mana","unlock_requirement":"Not defined",unlock_id:20076,can_use_during_ability:false,"display":'{"text":" ","color":"#4f4d4d"},{"text":"G","color":"#195c47"},{"text":"r","color":"#2e745d"},{"text":"o","color":"#448c73"},{"text":"u","color":"#59a48a"},{"text":"n","color":"#6fbca0"},{"text":"d","color":"#84d4b6"},{"text":" ","color":"#9aedcd"},{"text":"P","color":"#78c5b0"},{"text":"u","color":"#569d94"},{"text":"l","color":"#347578"},{"text":"l","color":"#124d5c"},{"text":" "}',"display_cooldown":'{"text":" ","strikethrough":true,"color":"#4f4d4d"},{"text":"G","strikethrough":true,"color":"#4d4d4d"},{"text":"r","strikethrough":true,"color":"#5a5a5a"},{"text":"o","strikethrough":true,"color":"#676767"},{"text":"u","strikethrough":true,"color":"#747474"},{"text":"n","strikethrough":true,"color":"#818181"},{"text":"d","strikethrough":true,"color":"#8e8e8e"},{"text":" ","strikethrough":true,"color":"#9c9c9c"},{"text":"P","strikethrough":true,"color":"#888888"},{"text":"u","strikethrough":true,"color":"#747474"},{"text":"l","strikethrough":true,"color":"#606060"},{"text":"l","strikethrough":true,"color":"#4d4d4d"},{"text":" ","strikethrough":true,"color":"#4f4d4d"}'}}


function #svm_ep:setup_custom_abilities

execute as @a run function svm_ep:player/joined
function svm_ep:menu/setup

#SCHEDULES
schedule clear svm_ep:8t
schedule function svm_ep:8t 2s
schedule clear svm_ep:40s
schedule function svm_ep:40s 2s
schedule clear svm_ep:2s
schedule function svm_ep:2s 2s
schedule clear svm_ep:7s
schedule function svm_ep:7s 2s
schedule clear svm_ep:0_save_locations
schedule function svm_ep:0_save_locations 2s

execute unless score %max_time svm_ep.time matches 1.. run scoreboard players set %max_time svm_ep.time 10

execute unless score spawnPowerMobPercent svm_ep.gamerule matches 0.. run scoreboard players set spawnPowerMobPercent svm_ep.gamerule 5
execute unless score goldenHeartMaxBoost svm_ep.gamerule matches 0.. run scoreboard players set goldenHeartMaxBoost svm_ep.gamerule 20
execute unless score goldenHeartBoost svm_ep.gamerule matches 0.. run scoreboard players set goldenHeartBoost svm_ep.gamerule 2
execute unless score maxMana svm_ep.gamerule matches 0.. run scoreboard players set maxMana svm_ep.gamerule 1000
execute unless score maxKatanaUpgrades svm_ep.gamerule matches 0.. run scoreboard players set maxKatanaUpgrades svm_ep.gamerule 30
execute unless score damageKatanaOnBlockChance svm_ep.gamerule matches 0.. run scoreboard players set damageKatanaOnBlockChance svm_ep.gamerule 15
execute unless score maxTimeStopTime svm_ep.gamerule matches 0.. run scoreboard players set maxTimeStopTime svm_ep.gamerule 200
execute unless score maxAccelerationLvl svm_ep.gamerule matches 0.. run scoreboard players set maxAccelerationLvl svm_ep.gamerule 90
execute unless score maxAcceleratedTime svm_ep.gamerule matches 0.. run scoreboard players set maxAcceleratedTime svm_ep.gamerule 2400
function svm_ep:menu/setup_gamerule_default_macro {gamerule:"gravityFieldPullBlocks",value:0}
function svm_ep:menu/setup_gamerule_default_macro {gamerule:"maxCopiedAbilities",value:5000}
function svm_ep:menu/setup_gamerule_default_macro {gamerule:"startMaxCopiedAbilities",value:250}
function svm_ep:menu/setup_gamerule_default_macro {gamerule:"startMaxMana",value:100}
function svm_ep:menu/setup_gamerule_default_macro {gamerule:"startAbilityPoints",value:10}


function svm_fs:60t

#MESSAGE
tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"S","bold":true,"color":"#7CF84C"},{"text":"V","bold":true,"color":"#70F244"},{"text":"M ","bold":true,"color":"#5FEA3C"},{"text":"P","bold":true,"color":"#3AE233"},{"text":"o","bold":true,"color":"#2ADA4C"},{"text":"w","bold":true,"color":"#22D26D"},{"text":"e","bold":true,"color":"#1BCA89"},{"text":"r","bold":true,"color":"#13D799"},{"text":"s","bold":true,"color":"#15E8AB"},{"text":" D","color":"#13D799"},{"text":"a","color":"#1BCA89"},{"text":"t","color":"#22D26D"},{"text":"a","color":"#2ADA4C"},{"text":"p","color":"#3AE233"},{"text":"a","color":"#5FEA3C"},{"text":"c","color":"#70F244"},{"text":"k","color":"#7CF84C"},{"text":"]","color":"gray"},{"text":" -"},{"text":" [","color":"gray"},{"text":"Loaded","bold":true,"color":"red"},{"text":"]","color":"gray"},{"text":"\n\n"},{"text":" \ud83d\udc7e","color":"#333333"},{"text":" D","color":"#5632FF"},{"text":"i","color":"#7C39FF"},{"text":"s","color":"#7057FF"},{"text":"c","color":"#927BFF"},{"text":"o","color":"#7057FF"},{"text":"r","color":"#7C39FF"},{"text":"d","color":"#5632FF"},{"text":": ","color":"gray"},{"text":"[","color":"gray","clickEvent":{"action":"open_url","value":"https://discord.gg/3Ku2mDtTtv"},"hoverEvent":{"action":"show_text","contents":"Click to join LordGacie's buds Discord Serverhttps://discord.gg/3Ku2mDtTtv"}},{"text":"J","bold":true,"color":"#CE62FF","clickEvent":{"action":"open_url","value":"https://discord.gg/3Ku2mDtTtv"},"hoverEvent":{"action":"show_text","contents":"Click to join LordGacie's buds Discord Serverhttps://discord.gg/3Ku2mDtTtv"}},{"text":"O","bold":true,"color":"#E377FF","clickEvent":{"action":"open_url","value":"https://discord.gg/3Ku2mDtTtv"},"hoverEvent":{"action":"show_text","contents":"Click to join LordGacie's buds Discord Serverhttps://discord.gg/3Ku2mDtTtv"}},{"text":"I","bold":true,"color":"#CE62FF","clickEvent":{"action":"open_url","value":"https://discord.gg/3Ku2mDtTtv"},"hoverEvent":{"action":"show_text","contents":"Click to join LordGacie's buds Discord Serverhttps://discord.gg/3Ku2mDtTtv"}},{"text":"N","bold":true,"color":"#AF33ED","clickEvent":{"action":"open_url","value":"https://discord.gg/3Ku2mDtTtv"},"hoverEvent":{"action":"show_text","contents":"Click to join LordGacie's buds Discord Serverhttps://discord.gg/3Ku2mDtTtv"}},{"text":"]","color":"gray","clickEvent":{"action":"open_url","value":"https://discord.gg/3Ku2mDtTtv"},"hoverEvent":{"action":"show_text","contents":"Click to join LordGacie's buds Discord Serverhttps://discord.gg/3Ku2mDtTtv"}},{"text":"\n\n"},{"text":"T","italic":true,"color":"#C3C3C3"},{"text":"h","italic":true,"color":"#CFCFCF"},{"text":"a","italic":true,"color":"#D7D7D7"},{"text":"n","italic":true,"color":"#E3E3E3"},{"text":"k","italic":true,"color":"#F1F1F1"},{"text":"s for downloading ~Lord","italic":true,"color":"#FDFDFD"},{"text":"G","italic":true,"color":"#F1F1F1"},{"text":"a","italic":true,"color":"#E3E3E3"},{"text":"c","italic":true,"color":"#D7D7D7"},{"text":"i","italic":true,"color":"#CFCFCF"},{"text":"e","italic":true,"color":"#C3C3C3"},{"text":"\n "}]