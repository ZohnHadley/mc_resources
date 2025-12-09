item modify entity @s weapon.offhand svm_ep:consume
advancement grant @s only svm_ep:unlocked_ability/fire/8
scoreboard players remove @s svm_ep.ability_points 300
effect give @s blindness 1 0 true
execute at @s run playsound minecraft:block.amethyst_cluster.break master @a[distance=..25] ~ ~ ~ 1.5 0
tellraw @s ["",{"text":"| Unlocked","color":"gray"},{"text":":","color":"white"},{"text":" [","color":"gray"},{"text":"Fire Arrow","bold":true,"color":"gold"},{"text":"]","color":"gray"}]