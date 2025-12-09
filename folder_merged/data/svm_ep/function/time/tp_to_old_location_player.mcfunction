scoreboard players set @s svm_ep.effect 1
$scoreboard players set @s svm_ep.e.accelerated $(accelerated)
$scoreboard players set @s svm_ep.p.time_accelerated_level $(accelerated_level)
function svm_ep:power/time/accelerate/calculate_acceleration
