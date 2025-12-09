scoreboard players set @s svm_ep.kill_after 40

$data merge entity @s {"text":[{"text":"$(damage)","color":"red"}],billboard:center,light:{sky:15,block:15}}

execute store result score .c svm_ep.numbers run random value 1..4
function svm_ep:system/set_random_rotation_non_player

execute if score .c svm_ep.numbers matches 1.. at @s run tp @s ^ ^ ^0.25
execute if score .c svm_ep.numbers matches 2.. at @s run tp @s ^ ^ ^0.25
execute if score .c svm_ep.numbers matches 3.. at @s run tp @s ^ ^ ^0.25
execute if score .c svm_ep.numbers matches 4.. at @s run tp @s ^ ^ ^0.25