
execute store result storage svm_ep:numbers input2.particle_count byte 1 run scoreboard players get @s svm_ep.p.time_accelerated_level

execute as @s[scores={svm_ep.walking=1..}] store result storage svm_ep:numbers input2.particle_count byte 0.25 run scoreboard players get @s svm_ep.p.time_accelerated_level
execute as @s[scores={svm_ep.sprinting=1..}] store result storage svm_ep:numbers input2.particle_count byte 0.75 run scoreboard players get @s svm_ep.p.time_accelerated_level




execute at @s run function svm_ep:power/time/accelerate/walk_particles with storage svm_ep:numbers input2