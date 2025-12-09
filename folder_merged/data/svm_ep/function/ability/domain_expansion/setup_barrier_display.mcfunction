tag @s remove svm_ep.domain_expansion_barrier_not_displayed


item replace entity @s contents with minecraft:black_concrete
data merge entity @s {transformation:{scale:[7.0f,7.0f,2f],translation:[0f,0f,1f]},interpolation_duration:40,start_interpolation:-1}
execute at @s if block ^ ^ ^-1 #svm_ep:no_physical_hitbox run tag @s add svm_ep.domain_expansion_barrier_safe
