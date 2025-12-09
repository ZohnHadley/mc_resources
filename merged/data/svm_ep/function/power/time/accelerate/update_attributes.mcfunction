attribute @s minecraft:attack_speed modifier remove svm_ep.e.accelerated
attribute @s minecraft:movement_speed modifier remove svm_ep.e.accelerated
attribute @s minecraft:step_height modifier remove svm_ep.e.accelerated
attribute @s minecraft:oxygen_bonus modifier remove svm_ep.e.accelerated
attribute @s minecraft:flying_speed modifier remove svm_ep.e.accelerated
attribute @s minecraft:block_break_speed modifier remove svm_ep.e.accelerated

$attribute @s[scores={svm_ep.p.time_accelerated_level=1..}] minecraft:block_break_speed modifier add svm_ep.e.accelerated $(value) add_multiplied_base
$attribute @s[scores={svm_ep.p.time_accelerated_level=1..}] minecraft:attack_speed modifier add svm_ep.e.accelerated $(value) add_multiplied_base
$attribute @s[scores={svm_ep.p.time_accelerated_level=1..}] minecraft:movement_speed modifier add svm_ep.e.accelerated $(value) add_multiplied_base
$attribute @s[scores={svm_ep.p.time_accelerated_level=1..}] minecraft:step_height modifier add svm_ep.e.accelerated $(value) add_multiplied_base
$attribute @s[scores={svm_ep.p.time_accelerated_level=1..}] minecraft:oxygen_bonus modifier add svm_ep.e.accelerated $(value) add_multiplied_base
$attribute @s[scores={svm_ep.p.time_accelerated_level=1..}] minecraft:flying_speed modifier add svm_ep.e.accelerated $(value) add_multiplied_base
