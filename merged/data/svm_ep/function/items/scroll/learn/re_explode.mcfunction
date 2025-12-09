item modify entity @s weapon.offhand svm_ep:consume
effect give @s blindness 1 0 true
execute at @s run playsound minecraft:block.amethyst_cluster.break master @a[distance=..25] ~ ~ ~ 1.5 0
advancement grant @s only svm_ep:unlocked_ability/explosion/7
tellraw @s ["",{"text":"| Unlocked","color":"gray"},{"text":":","color":"white"},{"text":" [","color":"gray"},{"text":"Re-Explode","bold":true,"color":"gold"},{"text":"]","color":"gray"}]