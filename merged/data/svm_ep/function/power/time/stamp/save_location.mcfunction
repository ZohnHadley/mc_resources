tag @s add executor
execute store result storage svm_ep:time_saves input.id int 1.0 run scoreboard players get @s svm_ep.entity_id
function svm_ep:power/time/stamp/setup_location with storage svm_ep:time_saves input
tag @s remove executor
scoreboard players reset @s svm_ep.using_move
scoreboard players remove @s svm_ep.mana 50
scoreboard players add @s svm_ep.used_move 50

particle minecraft:end_rod ~ ~ ~ 3 3 3 0.02 100
playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..10] ~ ~ ~ 1 2 1