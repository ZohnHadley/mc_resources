

execute as @s[tag=svm_ep.phase_user] run function svm_ep:power/phase/user_tick
execute as @s[tag=svm_ep.lightning_user] run function svm_ep:power/lightning/user_tick
execute as @s[tag=svm_ep.flora_user] run function svm_ep:power/flora/user_tick
execute as @s[tag=svm_ep.slime_user] run function svm_ep:power/slime/user_tick
execute as @s[tag=svm_ep.explosion_user] run function svm_ep:power/explosion/user_tick
execute as @s[tag=svm_ep.harpie_user] run function svm_ep:power/harpie/user_tick
execute as @s[tag=svm_ep.dimension_traveler_user] run function svm_ep:power/dimension_traveler/user_tick
execute as @s[tag=svm_ep.ice_user] run function svm_ep:power/ice/user_tick
execute as @s[tag=svm_ep.gravity_user] run function svm_ep:power/gravity/user_tick
execute as @s[tag=svm_ep.fire_user] run function svm_ep:power/fire/user_tick
execute as @s[tag=svm_ep.void_user] run function svm_ep:power/void/user_tick
execute as @s[tag=svm_ep.time_user] run function svm_ep:power/time/user_tick
execute as @s[tag=svm_ep.healing_user] run function svm_ep:power/healing/user_tick
execute as @s[tag=svm_ep.death_user] run function svm_ep:power/death/user_tick
execute as @s[tag=svm_ep.copy_user] run function svm_ep:power/copy/user_tick
execute as @s[tag=svm_ep.water_user] run function svm_ep:power/water/user_tick

execute as @s[tag=svm_ep.4fun_user] run function svm_ep:power/4fun/user_tick



function #svm_ep:power/user_tick

scoreboard players remove @s[scores={svm_ep.extra_tick_power_user=100..,svm_ep.using_move=..9999}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.extra_tick_power_user=100..}] svm_ep.extra_tick_power_user 100
execute as @s[scores={svm_ep.extra_tick_power_user=100..}] run function svm_ep:power/user_tick

