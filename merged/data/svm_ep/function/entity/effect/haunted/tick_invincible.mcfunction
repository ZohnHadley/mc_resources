
execute on attacker as @s[tag=svm_ep.death_user] run function svm_ep:entity/effect/haunted/attacked_by_death_on_invincibility
particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.7 0.5 0 3 force @a[tag=svm_ep.death_user]
effect give @e[tag=svm_ep.death_user,distance=..30] minecraft:slowness 2 1 true