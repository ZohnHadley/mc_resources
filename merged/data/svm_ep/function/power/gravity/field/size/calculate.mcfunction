#GET
scoreboard players operation %PARTICLE_COUNT_DISTANCE_0 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_COUNT_DISTANCE_1 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_COUNT_DISTANCE_2 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_COUNT_DISTANCE_3 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_COUNT_DISTANCE_4 svm_ep.numbers = @s svm_ep.p.gravity_field_strength

scoreboard players operation %PARTICLE_RANGE_DISTANCE_0 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_RANGE_DISTANCE_1 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_RANGE_DISTANCE_2 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_RANGE_DISTANCE_3 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %PARTICLE_RANGE_DISTANCE_4 svm_ep.numbers = @s svm_ep.p.gravity_field_strength
scoreboard players operation %EFFECT_RANGE svm_ep.numbers = @s svm_ep.p.gravity_field_strength

execute if score %PARTICLE_COUNT_DISTANCE_2 svm_ep.numbers matches ..5 run scoreboard players set %PARTICLE_COUNT_DISTANCE_2 svm_ep.numbers 5


#RANGE
scoreboard players operation %EFFECT_RANGE svm_ep.numbers *= %2 svm_ep.numbers
scoreboard players operation %EFFECT_RANGE svm_ep.numbers /= %7 svm_ep.numbers
scoreboard players operation %EFFECT_RANGE svm_ep.numbers += %3 svm_ep.numbers

#APPLY
execute store result storage svm_ep:numbers input.count_distance_0 int 0.045 run scoreboard players get %PARTICLE_COUNT_DISTANCE_0 svm_ep.numbers
execute store result storage svm_ep:numbers input.count_distance_1 int 0.125 run scoreboard players get %PARTICLE_COUNT_DISTANCE_1 svm_ep.numbers
execute store result storage svm_ep:numbers input.count_distance_2 int 0.2 run scoreboard players get %PARTICLE_COUNT_DISTANCE_2 svm_ep.numbers
execute store result storage svm_ep:numbers input.count_distance_3 int 0.77 run scoreboard players get %PARTICLE_COUNT_DISTANCE_3 svm_ep.numbers
execute store result storage svm_ep:numbers input.count_distance_4 int 1.3 run scoreboard players get %PARTICLE_COUNT_DISTANCE_4 svm_ep.numbers

execute store result storage svm_ep:numbers input.range_distance_0 double 0.221 run scoreboard players get %PARTICLE_RANGE_DISTANCE_0 svm_ep.numbers
execute store result storage svm_ep:numbers input.range_distance_1 double 0.23 run scoreboard players get %PARTICLE_RANGE_DISTANCE_1 svm_ep.numbers
execute store result storage svm_ep:numbers input.range_distance_2 double 0.25 run scoreboard players get %PARTICLE_RANGE_DISTANCE_2 svm_ep.numbers
execute store result storage svm_ep:numbers input.range_distance_3 double 0.26 run scoreboard players get %PARTICLE_RANGE_DISTANCE_3 svm_ep.numbers
execute store result storage svm_ep:numbers input.range_distance_4 double 0.3 run scoreboard players get %PARTICLE_RANGE_DISTANCE_4 svm_ep.numbers

execute store result storage svm_ep:numbers input.effect_range int 1 run scoreboard players get %EFFECT_RANGE svm_ep.numbers

scoreboard players reset @s svm_ep.mana_drain
execute on passengers run function svm_ep:power/gravity/field/display/tick with storage svm_ep:numbers input

execute as @s[tag=svm_ep.gravity_field_blast] run function svm_ep:power/gravity/field/blast/projectile_tick
execute as @s[tag=!svm_ep.gravity_field_blast] unless entity @s[scores={svm_ep.p.gravity_field_reverted=1}] run function svm_ep:power/gravity/field/pull with storage svm_ep:numbers input
execute as @s[tag=!svm_ep.gravity_field_blast] as @s[scores={svm_ep.p.gravity_field_reverted=1}] run function svm_ep:power/gravity/field/repel with storage svm_ep:numbers input

execute unless entity @s[scores={svm_ep.p.gravity_field_color=1..}] run return run function svm_ep:power/gravity/field/size/green with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=1}] run return run function svm_ep:power/gravity/field/size/red with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=2}] run return run function svm_ep:power/gravity/field/size/blue with storage svm_ep:numbers input

execute as @s[scores={svm_ep.p.gravity_field_color=3}] run return run function svm_ep:power/gravity/field/size/reverted/green with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=4}] run return run function svm_ep:power/gravity/field/size/reverted/red with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=5}] run return run function svm_ep:power/gravity/field/size/reverted/blue with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=6}] run return run function svm_ep:power/gravity/field/size/custom/6 with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=7}] run return run function svm_ep:power/gravity/field/size/custom/7 with storage svm_ep:numbers input
execute as @s[scores={svm_ep.p.gravity_field_color=8}] run return run function svm_ep:power/gravity/field/size/custom/8 with storage svm_ep:numbers input


