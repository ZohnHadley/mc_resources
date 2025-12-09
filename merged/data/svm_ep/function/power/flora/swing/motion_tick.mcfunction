function svm_ep:system/get_motion
execute on passengers run tag @s add passenger

#execute as @s[scores={motion.x=0,motion.z=0}] run say 0 MOTION
#execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run say NO ~
#execute at @s unless block ~ ~1 ~ #svm_ep:no_physical_hitbox run say NO ~1
#execute unless entity @e[tag=passenger] run say NO PASS

#execute on passengers run effect give @s slow_falling 1 0 true
execute on passengers run effect give @s minecraft:resistance 1 1 true
kill @s[scores={motion.x=0,motion.z=0}]
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run kill @s
execute at @s unless block ~ ~1 ~ #svm_ep:no_physical_hitbox run kill @s
execute unless entity @e[tag=passenger] run kill @s

#tellraw @a ["",{"score":{"name":"@s","objective":"motion.z"}},{"text":" X - Z "},{"score":{"name":"@s","objective":"motion.x"}}]
tag @e remove passenger