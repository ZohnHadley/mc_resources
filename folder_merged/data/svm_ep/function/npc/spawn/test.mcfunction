data merge entity @s {Silent:1b,Tags:["new","svm_ep.npc","svm_ep.npc_test"],Health:20,CanPickUpLoot:0b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Duration:"infinite",ShowParticles:0b}],Attributes:[{Name:"max_health",Base:20f}]}

summon item_display ~ ~ ~ {item_display:"head",Tags:["new2","svm_ep.npc","svm_ep.npc_display"],item:{id:"blue_dye",Count:1b,components:{"item_model":"svm_ep:npc/test/body"}}}
execute as @e[tag=new2,distance=..5] at @s run ride @s mount @e[tag=new,limit=1,sort=nearest]

item replace entity @s armor.head with blue_dye[item_model="svm_ep:npc/test/head"]
item replace entity @s weapon with air

tag @s add svm_ep.power_user
tag @s add svm_ep.4fun_user

tag @s remove new
tag @e[distance=..5] remove new2