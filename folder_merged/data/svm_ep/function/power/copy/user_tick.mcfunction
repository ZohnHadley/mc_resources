

execute as @s[scores={svm_ep.p.copy_underwater_adaptation=1..}] run function svm_ep:power/copy/underwater_adaptation/tick
execute as @s[scores={svm_ep.p.copy_night_vision=1..}] run function svm_ep:power/copy/night_vision/tick
execute as @s[scores={svm_ep.p.copy_fire_adaptation=1..}] run function svm_ep:power/copy/fire_adaptation/tick
execute as @s[scores={svm_ep.p.copy_invisibility=1..}] run function svm_ep:power/copy/invisibility/tick
execute as @s[scores={svm_ep.p.copy_withering_touch=1..}] run function svm_ep:power/copy/withering_touch/tick
execute as @s[scores={svm_ep.p.harpie_movement=1}] run function svm_ep:power/copy/power/harpie/tick

execute unless entity @s[scores={svm_ep.using_move=1..}] run return 0
execute as @s[scores={svm_ep.using_move=1..100}] at @s run function svm_ep:power/copy/copy/tick
execute as @s[scores={svm_ep.using_move=101..200}] at @s run function svm_ep:power/copy/armadillo_armor/tick
execute as @s[scores={svm_ep.using_move=201..300}] at @s run function svm_ep:power/copy/fireball/tick
execute as @s[scores={svm_ep.using_move=301..400}] at @s run function svm_ep:power/copy/wind_charge/tick
execute as @s[scores={svm_ep.using_move=401..500}] at @s run function svm_ep:power/copy/poisonous_bite/tick
execute as @s[scores={svm_ep.using_move=501..600}] at @s run function svm_ep:power/copy/self_destruct/tick
execute as @s[scores={svm_ep.using_move=601..700}] at @s run function svm_ep:power/copy/dragons_breath/tick
execute as @s[scores={svm_ep.using_move=701..800}] at @s run function svm_ep:power/copy/teleportation/tick
execute as @s[scores={svm_ep.using_move=801..900}] at @s run function svm_ep:power/copy/fangs_of_the_mansion/tick
execute as @s[scores={svm_ep.using_move=901..1000}] at @s run function svm_ep:power/copy/shulker_bullet/tick
execute as @s[scores={svm_ep.using_move=1001..1100}] at @s run function svm_ep:power/copy/sonic_boom/tick
execute as @s[scores={svm_ep.using_move=1101..1300}] at @s run function svm_ep:power/copy/power/phase/tick
execute as @s[scores={svm_ep.using_move=1301..1400}] at @s run function svm_ep:power/copy/power/explosion/tick
execute as @s[scores={svm_ep.using_move=1401..1500}] at @s run function svm_ep:power/copy/power/ice/tick
execute as @s[scores={svm_ep.using_move=1501..1600}] at @s run function svm_ep:power/copy/power/gravity/tick
execute as @s[scores={svm_ep.using_move=1601..1700}] at @s run function svm_ep:power/copy/power/dimension_traveler/tick
execute as @s[scores={svm_ep.using_move=1701..1800}] at @s run function svm_ep:power/copy/power/fire/tick
execute as @s[scores={svm_ep.using_move=1801..1900}] at @s run function svm_ep:power/copy/power/time/start_tick
execute as @s[scores={svm_ep.using_move=1901..2000}] at @s run function svm_ep:power/copy/power/time/windup
execute as @s[scores={svm_ep.using_move=2001..2100}] at @s run function svm_ep:power/copy/power/healing/tick
