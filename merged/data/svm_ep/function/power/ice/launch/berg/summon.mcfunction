
data merge entity @s {teleport_duration:3}
item replace entity @s container.0 with ice
execute if block ~ ~ ~ minecraft:packed_ice run item replace entity @s container.0 with packed_ice
execute if block ~ ~ ~ minecraft:blue_ice run item replace entity @s container.0 with blue_ice
setblock ~ ~ ~ air
data merge entity @s {transformation:{translation:[0,0,0.75]}}
execute store result entity @s transformation.translation[0] float 0.01 run random value -110..110
execute store result entity @s transformation.translation[1] float 0.01 run random value -110..110
execute store result entity @s transformation.translation[2] float 0.01 run random value -110..110

playsound minecraft:entity.player.attack.strong master @a[distance=..30] ~ ~ ~ 2 2

rotate @s ~ ~
execute if predicate svm_ep:chance/33_percent run function svm_ep:system/set_random_rotation_non_player

ride @s mount @n[tag=svm_ep.launched_ice]
tag @s add svm_ep.launched_ice_hitbox
tag @s add svm_ep.check_to_recall
execute store result storage svm_ep:coordinates input.c int 1 run random value -6..6
execute store result storage svm_ep:coordinates input.v int 1 run random value -6..6
function svm_ep:system/test/macro/rot0 with storage svm_ep:coordinates input