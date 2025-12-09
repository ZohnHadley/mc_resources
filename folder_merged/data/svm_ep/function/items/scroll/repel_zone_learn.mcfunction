item modify entity @s weapon.offhand svm_ep:consume
advancement grant @s only svm_ep:unlocked_ability/gravity/7
scoreboard players remove @s svm_ep.ability_points 200
effect give @s blindness 1 0 true
execute at @s run playsound minecraft:block.amethyst_cluster.break master @a[distance=..25] ~ ~ ~ 1.5 0
tellraw @s ["",{"text":"| Unlocked","color":"gray"},{"text":":","color":"white"},{"text":" [","color":"gray"},{"text":"Repel Zone","bold":true,"color":"red"},{"text":"]","color":"gray"}]