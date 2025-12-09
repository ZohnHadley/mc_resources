tag @s add repel
tp @s ~ ~ ~ 
execute at @s run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 3
execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 2 40
execute as @a[distance=..50] at @s run playsound minecraft:entity.player.attack.knockback master @s ~ ~ ~ 1 0
execute at @s summon marker run function svm_ep:items/tengu/blast/tp

tag @s remove repel