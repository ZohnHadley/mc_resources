data merge entity @s {Silent:1b,Tags:["new","svm_ep.npc","svm_ep.npc_gill"],CanPickUpLoot:0b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Duration:"infinite",ShowParticles:0b}]}

summon item_display ~ ~ ~ {item_display:"head",Tags:["new2","svm_ep.npc","svm_ep.npc_display"],item:{id:"blue_dye",Count:1b,components:{"item_model":"svm_ep:npc/gill/body"}}}
execute as @e[tag=new2,distance=..5] at @s run ride @s mount @n[tag=new]

item replace entity @s armor.head with blue_dye[item_model="svm_ep:npc/gill/head"]
item replace entity @s weapon with air

attribute @s minecraft:knockback_resistance base set 0.75
attribute @s minecraft:follow_range base set 50
attribute @s minecraft:max_health base set 250
attribute @s minecraft:movement_speed modifier add svm_ep.npc 0.5 add_multiplied_total

data merge entity @s {Health:250}


tag @s add svm_ep.power_user
tag @s add svm_ep.fire_user

tag @s remove new
tag @e[distance=..5] remove new2