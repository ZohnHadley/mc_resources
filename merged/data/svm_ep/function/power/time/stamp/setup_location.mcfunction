$data remove storage svm_ep:time_saves timestamp.$(id)

$execute store result storage svm_ep:time_saves timestamp.$(id).health int 1.0 run data get entity @s Health 1.0
$execute store result storage svm_ep:time_saves timestamp.$(id).mana int 1.0 run scoreboard players get @s svm_ep.mana
$execute store result storage svm_ep:time_saves timestamp.$(id).pos_x int 1.0 run data get entity @s Pos[0]
$execute store result storage svm_ep:time_saves timestamp.$(id).pos_y int 1.0 run data get entity @s Pos[1]
$execute store result storage svm_ep:time_saves timestamp.$(id).pos_z int 1.0 run data get entity @s Pos[2]
$execute store result storage svm_ep:time_saves timestamp.$(id).rot_x int 1.0 run data get entity @s Rotation[0]
$execute store result storage svm_ep:time_saves timestamp.$(id).rot_y int 1.0 run data get entity @s Rotation[1]
$data modify storage svm_ep:time_saves timestamp.$(id).dimension set from entity @p Dimension


$execute store result storage svm_ep:time_saves timestamp.$(id).accelerated_level int 1.0 run scoreboard players get @s svm_ep.p.time_accelerated_level
$execute store result storage svm_ep:time_saves timestamp.$(id).accelerated int 1.0 run scoreboard players get @s svm_ep.e.accelerated