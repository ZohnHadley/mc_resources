execute at @s unless block ~ ~ ~ #svm_ep:flora_manipulation/vines run return run kill @s
execute at @s run tp @s ^ ^ ^-0.3
rotate @s facing ~ ~ ~
execute at @s run function svm_ep:power/flora/vine/shoot
#execute at @s run function svm_ep:break_block
execute at @s run playsound minecraft:entity.breeze.jump master @a[distance=..25] ~ ~ ~ 0.8 1.1

tag @s remove svm_ep.flora_manipulated_block
tag @s remove svm_ep.flora_vine_marker
scoreboard players set @s svm_ep.lifetime -300