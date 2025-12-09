advancement revoke @s only svm_ep:data/attack_not_haunted_mob_as_death_user

execute at @s unless entity @e[scores={svm_ep.e.haunted=7201..},distance=..40] run return 0

damage @s 4 minecraft:cramming
effect give @s minecraft:slowness 5 2 true
effect give @s minecraft:weakness 5 0 true
scoreboard players add @s svm_ep.mana_drain 2500
