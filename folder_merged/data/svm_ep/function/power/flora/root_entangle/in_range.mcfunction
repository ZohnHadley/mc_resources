execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run return 0
scoreboard players set @s svm_ep.effect 1

scoreboard players add @s svm_ep.e.root_entangle 60
execute at @s run particle minecraft:dust{color:[0.61f,0.4f,0.25f],scale:2f} ~ ~0.3 ~ 1 0.2 1 0 30
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a[distance=..25] ~ ~ ~ 0.1 1.5
execute at @s run playsound minecraft:block.rooted_dirt.break master @a[distance=..25] ~ ~ ~ 1 0.5
