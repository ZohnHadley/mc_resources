summon skeleton ~ ~ ~ {Tags:["new","svm_ep.npc","svm_ep.npc_cherry_guardian","svm_ep.power_user","svm_ep.flora_user"],Health:40,CanPickUpLoot:1b,OnGround:1b,PersistenceRequired:1b,Attributes:[{Name:"max_health",Base:40f}]}
team join svm_ep.cherry_guardians @n[tag=new]
attribute @n[tag=new] minecraft:follow_range modifier add svm_ep:cherry_guardian 30 add_value
loot replace entity @n[tag=new] weapon.mainhand loot svm_ep:items/cherry_katana
execute as @n[tag=new] run item replace entity @s armor.chest with leather_chestplate[minecraft:dyed_color=15888545,custom_name=[{"text":"Cherry Guardian's Chestplate","italic":false}]] 1
execute as @n[tag=new] run item replace entity @s armor.head with cherry_leaves
effect give @n[tag=new] minecraft:weakness 3 1 true
effect give @n[tag=new] minecraft:slowness 3 1 true
tag @e remove new


