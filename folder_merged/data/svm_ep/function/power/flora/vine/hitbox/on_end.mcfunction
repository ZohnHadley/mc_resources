
execute as @s[scores={svm_ep.lifetime=1005..}] run return run function svm_ep:power/flora/vine/hitbox/end
execute as @s[tag=svm_ep.flora_vine_is_hitbox] run return run function svm_ep:power/flora/vine/hitbox/start_end

execute on vehicle run data merge entity @s {interpolation_duration:1,start_interpolation:-1}
execute on vehicle store result entity @s transformation.left_rotation[3] float 0.01 run return run random value -200..200
