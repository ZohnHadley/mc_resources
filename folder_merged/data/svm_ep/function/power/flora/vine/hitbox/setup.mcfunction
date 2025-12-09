data merge entity @s {Health:50,NoAI:1b,attributes:[{id:max_health,base:50f}],PersistenceRequired:1b,Silent:1b,Color:13}

attribute @s minecraft:scale base set 0.6
effect give @s minecraft:invisibility infinite 0 true
execute at @n[tag=executor] anchored eyes positioned ^ ^ ^100 run rotate @s facing ~ ~ ~
tag @s add svm_ep.flora_vine_hitbox
execute summon item_display run function svm_ep:power/flora/vine/hitbox/setup_display
tag @s add svm_ep.flora_vine_is_hitbox

scoreboard players set @s svm_ep.projectile 4
scoreboard players set @s svm_ep.projectile_type 2
