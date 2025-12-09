scoreboard players add @s svm_ep.p.time_accelerated_level 1
execute if score @s svm_ep.p.time_accelerated_level >= maxAccelerationLvl svm_ep.gamerule run function svm_ep:power/time/accelerate/max_level

function svm_ep:power/time/accelerate/calculate_acceleration

particle minecraft:end_rod ~ ~1 ~ 0 0 0 2 30
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
playsound minecraft:entity.allay.item_given master @a ~ ~ ~ 1.5 1.85
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.5 1.3