scoreboard players remove @s svm_ep.npc.adapter.adapted 1
execute as @s[scores={svm_ep.npc.adapter.adapted=4..}] on passengers at @s run rotate @s ~24 ~
execute as @s[scores={svm_ep.npc.adapter.adapted=..6}] on passengers at @s run rotate @s ~-8 ~

execute as @s[scores={svm_ep.npc.adapter.adapted=1}] run playsound minecraft:block.bell.use master @a ~ ~ ~