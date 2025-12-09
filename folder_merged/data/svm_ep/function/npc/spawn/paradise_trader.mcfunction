summon wandering_trader ~ ~ ~ {Silent:1b,Profession:0,Offers:{Recipes:[]},Tags:["new","svm_ep.npc","svm_ep.npc_paradise_trader"],CustomName:[{"text":"Pa","color":"#4CF8B4"},{"text":"r","color":"#72FFD6"},{"text":"adise T","color":"#9FFFD2"},{"text":"rad","color":"#72FFD6"},{"text":"er","color":"#4CF8B4"}],CanPickUpLoot:0b,OnGround:1b,PersistenceRequired:1b,HandDropChances:[0.00f]}


summon item_display ~ ~ ~ {teleport_duration:5,item_display:"head",Tags:["new2","svm_ep.no_tick","svm_ep.npc","svm_ep.npc_display","svm_ep.npc_paradise_trader"]}

item replace entity @n[tag=new] armor.head with blue_dye[item_model="svm_ep:npc/paradise_trader/head"]
ride @n[tag=new2] mount @e[tag=new,limit=1,sort=nearest]

attribute @n[tag=new,limit=1] minecraft:max_health base set 50
attribute @n[tag=new,limit=1] minecraft:step_height base set 1.5
data merge entity @n[tag=new,limit=1] {Health:50}


execute as @n[tag=new] run function svm_ep:npc/paradise_trader/trades
execute as @n[tag=new] run function svm_ep:system/message/spawned_at {"selector":"@a[distance=..200]"}
tag @e remove new
tag @e remove new2

