summon wandering_trader ~ ~ ~ {Silent:1b,Profession:0,Offers:{Recipes:[{maxUses:15,buy:{id:iron_ingot,count:15},buyB:{id:gold_ingot,count:10},sell:{id:flower_banner_pattern,Count:1,components:{"minecraft:custom_data":{svm_ep.item:{id:power_scroll,power:phase},tick:{offhand:{command:'function svm_ep:items/scroll/held_offhand',swap_items_on_trigger:{}}}},"custom_name":[{"text":"Phase Scroll","italic":false,"bold":true,"color":"gold"}],"lore":[[{"text":"Put in your offhand to learn powers of phasing","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}],[{"text":"","italic":false,"color":"dark_purple"}],[{"text":"(Doesn\'t work if user has any of the powers)","italic":true,"color":"gray"}]]}}}]},Tags:["new","svm_ep.npc","svm_ep.npc_pemc","svm_ep.power_user","svm_ep.phase_user"],CustomName:[{"text":"P","color":"#ff0000"},{"text":"e","color":"#ff3300"},{"text":"m","color":"#ff6600"},{"text":"c","color":"#ff3300"}],Health:500,CanPickUpLoot:0b,OnGround:1b,PersistenceRequired:1b,ActiveEffects:[{Id:14,Duration:"infinite",ShowParticles:0b}],HandDropChances:[0.00f],Attributes:[{Name:"max_health",Base:500f}]}


summon item_display ~ ~ ~ {teleport_duration:5,item_display:"head",Tags:["new2","svm_ep.no_tick","svm_ep.npc","svm_ep.npc_display","svm_ep.npc_pemc"]}

item replace entity @n[tag=new2] container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:pemc"]
ride @n[tag=new2] mount @e[tag=new,limit=1,sort=nearest]

effect give @n[tag=new] invisibility infinite 0 true
attribute @n[tag=new,limit=1] minecraft:max_health base set 250
attribute @n[tag=new,limit=1] minecraft:step_height base set 2.5
data merge entity @n[tag=new,limit=1] {Health:250}


execute as @n[tag=new] run function svm_ep:npc/pemc/trades

tag @e remove new
tag @e remove new2