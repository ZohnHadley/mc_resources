execute unless score doPowerMobsSpawn svm_ep.gamerule matches 0 as @s[type=minecraft:slime] if predicate svm_ep:spawn_power_mob_generic run function svm_ep:npc/spawn/slime
execute unless score doPowerMobsSpawn svm_ep.gamerule matches 0 as @s[type=#svm_ep:can_have/power] if predicate svm_ep:spawn_power_mob_generic run function svm_ep:npc/spawn/power_user
execute unless score doPowerMobsSpawn svm_ep.gamerule matches 0 as @s[type=#svm_ep:can_have/power,tag=!svm_ep.power_user] at @s if predicate svm_ep:spawn_power_mob_extra run function svm_ep:npc/spawn/power_user

tag @s add svm_ep.has_entity_id
