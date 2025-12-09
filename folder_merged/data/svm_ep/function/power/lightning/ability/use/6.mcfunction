execute as @s[type=player,advancements={svm_ep:unlocked_ability/lightning/3=false}] run return 0
execute as @s[scores={svm_ep.p.lightning_ability_06_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.p.lightning_ability_06_delay 40
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_06_delay *= %thunder_passive_cooldown_multiplier svm_ep.world_settings
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.lightning_ability_06_delay /= %thunder_passive_cooldown_divisor svm_ep.world_settings
scoreboard players add @s svm_ep.used_move 350
scoreboard players set @s svm_ep.using_move 300
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=5..}] svm_ep.using_move 1
effect give @s minecraft:slowness 1 6 true
effect give @s minecraft:levitation 1 16 true

execute at @s run particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[2.4f,0.0f,0.5f],scale:1f} ~ ~2.7 ~ 1 2 1 0.4 80
execute at @s run particle minecraft:cloud ~ ~0.7 ~ 0 0 0 0.2 40

execute at @s run summon minecraft:marker ~ ~12 ~ {Tags:["svm_ep.temporary_block","svm_ep.temporary_block_barrier"],Fire:-25}
execute at @s run summon minecraft:marker ~ ~12 ~0.5 {Tags:["svm_ep.temporary_block","svm_ep.temporary_block_barrier"],Fire:-25}
execute at @s run summon minecraft:marker ~ ~12 ~-0.5 {Tags:["svm_ep.temporary_block","svm_ep.temporary_block_barrier"],Fire:-25}
execute at @s run summon minecraft:marker ~0.5 ~12 ~ {Tags:["svm_ep.temporary_block","svm_ep.temporary_block_barrier"],Fire:-25}
execute at @s run summon minecraft:marker ~-0.5 ~12 ~ {Tags:["svm_ep.temporary_block","svm_ep.temporary_block_barrier"],Fire:-25}


execute at @s run playsound minecraft:entity.allay.death ambient @a[distance=..20] ~ ~ ~ 3 0
execute at @s run particle minecraft:sonic_boom ~ ~1 ~