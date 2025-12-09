effect give @s minecraft:slowness 1 5 true
effect give @s minecraft:blindness 1 0 true
playsound minecraft:entity.ender_dragon.hurt master @a[distance=..50] ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.growl master @a[distance=..50] ~ ~ ~ 0.3 0
playsound minecraft:entity.player.attack.sweep master @a[distance=..50] ~ ~ ~ 1.3 2

scoreboard players operation %damage svm_ep.numbers = @s svm_ep.using_move
scoreboard players operation %damage svm_ep.numbers -= %200 svm_ep.numbers
scoreboard players operation %damage svm_ep.numbers -= %15 svm_ep.numbers

scoreboard players operation %damage svm_ep.numbers /= %-2 svm_ep.numbers
scoreboard players operation %damage svm_ep.numbers /= %2 svm_ep.numbers

scoreboard players operation %raycast_length svm_ep.numbers = %damage svm_ep.numbers
scoreboard players operation %raycast_length svm_ep.numbers /= %1 svm_ep.numbers

tag @s add executor


function svm_ep:power/death/cleaving_cut/raycast

execute as @e[tag=hitby] at @s run function svm_ep:power/death/cleaving_cut/hitby


scoreboard players reset @s svm_ep.using_move
tag @s remove executor
