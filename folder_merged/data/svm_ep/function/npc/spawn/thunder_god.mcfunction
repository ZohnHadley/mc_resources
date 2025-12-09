summon zombified_piglin ~ ~ ~ {Silent:1b,Tags:["new","svm_ep.npc","svm_ep.npc_thunder_god","svm_ep.power_user","svm_ep.lightning_user"],CustomName:[{"text":"T","color":"aqua"},{"text":"h","color":"#84FFFF"},{"text":"u","color":"#A9FFFF"},{"text":"n","color":"#C3FFFF"},{"text":"de","color":"#DAFFFF"},{"text":"r","color":"#C3FFFF"},{"text":" G","color":"#A9FFFF"},{"text":"o","color":"#84FFFF"},{"text":"d","color":"aqua"}],Health:500,CanPickUpLoot:1b,OnGround:1b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Duration:"infinite",ShowParticles:0b}],Attributes:[{Name:"max_health",Base:500f}]}

summon armor_stand ~ ~ ~ {Tags:["new2","svm_ep.npc","svm_ep.npc_display","svm_ep.npc_thunder_god"],ShowArms:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,DisabledSlots:4144959}

execute as @n[tag=new2] run ride @s mount @n[tag=new,sort=nearest]

effect give @n[tag=new] invisibility infinite 0 true
#effect give @e[tag=new] resistance infinite 0 true
attribute @n[tag=new,limit=1] minecraft:knockback_resistance base set 0.75
attribute @n[tag=new,limit=1] minecraft:follow_range base set 50
attribute @n[tag=new,limit=1] minecraft:max_health base set 500
data merge entity @n[tag=new,limit=1] {Health:500}

tag @e remove new
tag @e remove new2