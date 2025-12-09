#AS PROJECTILE=-100..

tag @s add svm_ep.can_redirect
execute as @s[scores={svm_ep.projectile_type=1..}] at @s run return run function svm_ep:projectile/type
execute as @s[scores={svm_ep.projectile_id=1..}] at @s run return run function svm_ep:entity/projectile/tick
function #svm_ep:projectile_tick



execute as @s[tag=svm_ep.slime_spit2] at @s run return run function svm_ep:power/slime/spit/tick2
execute as @s[tag=svm_ep.slime_explosion] at @s run return run function svm_ep:power/slime/explosion/tick
execute as @s[tag=svm_ep.flora_blooming_collect] at @s run return run function svm_ep:power/flora/blooming_flash/projectile_tick
execute as @s[tag=svm_ep.slime_barrier_projectile] at @s run return run function svm_ep:power/slime/barrier/projectile_tick
execute as @s[tag=svm_ep.explosion_launch] at @s run return run function svm_ep:power/explosion/launch/projectile_tick
execute as @s[tag=svm_ep.lightning_blast] at @s run return run function svm_ep:power/lightning/blast/projectile_tick
execute as @s[tag=svm_ep.lightning_god_slash] at @s run return run function svm_ep:power/lightning/god_slash/projectile_tick
execute as @s[tag=svm_ep.explosion_bullet] at @s run return run function svm_ep:power/explosion/bullet/projectile_tick
execute as @s[tag=svm_ep.iceberg_projectile] at @s run return run function svm_ep:power/ice/berg/projectile_tick
execute as @s[tag=svm_ep.launched_ice] at @s run return run function svm_ep:power/ice/launch/projectile_tick
execute as @s[tag=svm_ep.gravity_blast] at @s run return run function svm_ep:power/gravity/blast/projectile_tick
execute as @s[tag=svm_ep.gravity_pull] at @s run return run function svm_ep:power/gravity/pull/projectile_tick
execute as @s[tag=svm_ep.gravity_field_stripe] at @s run return run function svm_ep:power/gravity/field/display/stripe/projectile_tick
execute as @s[tag=svm_ep.gravity_field_block] at @s run return run function svm_ep:power/gravity/field/block/projectile_tick
execute as @s[tag=svm_ep.gravity_field] at @s run return run function svm_ep:power/gravity/field/projectile_tick
execute as @s[tag=svm_ep.gravity_field_blast] at @s run return run function svm_ep:power/gravity/field/blast/projectile_tick
execute as @s[tag=svm_ep.gravity_repel_blast] at @s run return run function svm_ep:power/gravity/repel_blast/projectile_tick
execute as @s[tag=svm_ep.gravity_punch] at @s run return run function svm_ep:power/gravity/punch/projectile_tick
execute as @s[tag=svm_ep.razor_feather] at @s run return run function svm_ep:power/harpie/razor/projectile_tick
execute as @s[tag=svm_ep.meteor] at @s run return run function svm_ep:power/4fun/meteor/projectile_tick
execute as @s[tag=svm_ep.fire_blow] at @s run return run function svm_ep:power/fire/barrage/projectile_tick
execute as @s[tag=svm_ep.thunder_hammer] at @s run return run function svm_ep:items/hammer/thunder/projectile_tick
execute as @s[tag=svm_ep.tornado] at @s run return run function svm_ep:items/tengu/tornado/tick
execute as @s[tag=svm_ep.air_blast] at @s run return run function svm_ep:items/tengu/blast/projectile_tick
execute as @s[tag=svm_ep.lightning_ray] at @s run return run function svm_ep:power/lightning/field/ray/projectile_tick
execute as @s[tag=svm_ep.black_box] at @s run return run function svm_ep:non_power/black_box/projectile_tick
execute as @s[tag=svm_ep.void_bullet] at @s run return run function svm_ep:power/void/bullet/projectile_tick
execute as @s[tag=svm_ep.charging_void] at @s run return run function svm_ep:power/void/charging/projectile_tick
execute as @s[tag=svm_ep.black_hole] at @s run return run function svm_ep:power/void/black_hole/projectile_tick
execute as @s[tag=svm_ep.chain] at @s run return run function svm_ep:fighting_style/chain/projectile/tick
execute as @s[tag=svm_ep.thunder_shot] at @s run return run function svm_ep:items/ability/thunder_shot/projectile_tick
execute as @s[tag=svm_ep.mangrove_tower] at @s run return run function svm_ep:power/flora/mangrove_tower/projectile_tick
execute as @s[tag=svm_ep.mangrove_root] at @s run return run function svm_ep:power/flora/mangrove_tower/projectile_tick_root
execute as @s[tag=svm_ep.piercing_vine] at @s run return run function svm_ep:power/flora/piercing_vine/projectile_tick
execute as @s[tag=svm_ep.cacti_grenade] at @s run return run function svm_ep:power/flora/cacti_grenade/projectile_tick
execute as @s[tag=svm_ep.cacti_grenade_spike] at @s run return run function svm_ep:power/flora/cacti_grenade/projectile_tick_spike
execute as @s[tag=svm_ep.wooden_branch] at @s run return run function svm_ep:power/flora/wooden_branch/projectile_tick
execute as @s[tag=svm_ep.kelp_slap] at @s run return run function svm_ep:power/flora/kelp_slap/projectile_tick
execute as @s[tag=svm_ep.leaf_storm] at @s run return run function svm_ep:power/flora/leaf_storm/projectile_tick
execute as @s[tag=svm_ep.spore_cloud] at @s run return run function svm_ep:power/flora/spore_cloud/projectile_tick
execute as @s[tag=svm_ep.warped_fungus] at @s positioned ^0.5 ^ ^0.5 run return run function svm_ep:power/flora/warped_fungus/projectile_tick
execute as @s[tag=svm_ep.phasing_moss] at @s run return run function svm_ep:power/flora/phasing_moss/projectile_tick
execute as @s[tag=svm_ep.inescapable_garden] at @s run return run function svm_ep:power/flora/inescapable_garden/projectile_tick
execute as @s[tag=svm_ep.flame_arrow] at @s run return run function svm_ep:power/fire/arrow/projectile_tick
execute as @s[tag=svm_ep.ice_tongue] at @s run return run function svm_ep:power/ice/tongue/projectile_tick
execute as @s[tag=svm_ep.telekinesis_ground_pull] at @s run return run function svm_ep:power/telekinesis/ground_pull/projectile_tick
execute as @s[tag=svm_ep.cherry_blessing] at @s run return run function svm_ep:items/ability/cherry_blessing/projectile_tick
execute as @s[tag=svm_ep.dragons_breath] at @s run return run function svm_ep:power/copy/dragons_breath/projectile_tick
execute as @s[tag=svm_ep.shulker_bullet] at @s run return run function svm_ep:power/copy/shulker_bullet/projectile_tick
execute as @s[tag=svm_ep.cobweb_launch] at @s run return run function svm_ep:power/copy/cobweb_launch/projectile_tick
execute as @s[tag=svm_ep.domain_expansion] at @s run return run function svm_ep:ability/domain_expansion/projectile_tick
execute as @s[tag=svm_ep.domain_expansion_inside] at @s run return run function svm_ep:ability/domain_expansion/projectile_tick_inside
execute as @s[tag=svm_ep.water_droplet] at @s run return run function svm_ep:power/water/droplet/projectile_tick
execute as @s[tag=svm_ep.water_whirlpool] at @s run return run function svm_ep:power/water/manipulation/whirlpool/projectile_tick
execute as @s[tag=svm_ep.water_launch] at @s run return run function svm_ep:power/water/manipulation/launch/projectile_tick



