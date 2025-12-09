

tag @s add executor
execute store result score %USER_HEALTH svm_ep.numbers run data get entity @s Health
scoreboard players reset %COPIED_ABILITY svm_ep.numbers


execute at @s as @e[tag=!executor,distance=..8] at @s on attacker if entity @s[tag=executor] as @n as @s[nbt={HurtTime:10s}] run function svm_ep:power/copy/copy/hit_by
tag @s remove executor
scoreboard players reset @s svm_ep.using_move

execute if score %COPIED_ABILITY svm_ep.numbers matches -5 run return run function svm_ep:power/copy/copy/fail_mob_on_cooldown


scoreboard players add @s svm_ep.p.copy_ability_01_delay 200




execute if score %USER_HEALTH svm_ep.numbers matches ..0 run return run function svm_ep:power/copy/copy/fail_no_hp


scoreboard players operation %COPIED_COUNT svm_ep.numbers = %USER_HEALTH svm_ep.numbers
scoreboard players operation %COPIED_COUNT svm_ep.numbers *= %copy_copied_abilities_per_hp_multiplier svm_ep.world_settings
scoreboard players operation %COPIED_COUNT svm_ep.numbers /= %copy_copied_abilities_per_hp_divisor svm_ep.world_settings

execute unless score %COPIED_COUNT svm_ep.numbers matches 5.. run scoreboard players set %COPIED_COUNT svm_ep.numbers 5






execute unless score %COPIED_ABILITY svm_ep.numbers matches 1.. run return run function svm_ep:power/copy/copy/fail_cant_copy

#scoreboard players add @s svm_ep.p.copy_ability_01_delay 1200
function svm_ep:power/copy/copy/copy
#execute if score %COPIED_ABILITY svm_ep.numbers matches 1..9 run return run function svm_ep:power/copy/copy/copied_1_9
