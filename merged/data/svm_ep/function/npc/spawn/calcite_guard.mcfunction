playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 0.8
particle minecraft:poof ~ ~0.8 ~ 0.35 0.65 0.35 0.15 100
particle minecraft:crit ~ ~1 ~ 0 0 0 1.7 100
scoreboard players add @a[distance=..9] svm_ep.shaking 7
#summon skeleton ~ ~ ~ {Tags:["new","svm_ep.npc","svm_ep.npc_calcite_guard","svm_ep.power_user","svm_ep.phase_user"],Health:32,CanPickUpLoot:1b,OnGround:1b,PersistenceRequired:1b,Attributes:[{Name:"max_health",Base:32f}]}
summon skeleton ~ ~ ~ {Health:32,CanPickUpLoot:0b,PersistenceRequired:1b,Tags:["new","svm_ep.npc","svm_ep.npc_calcite_guard","svm_ep.power_user","svm_ep.phase_user"],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:calcite,Count:1}],ArmorDropChances:[f,f,f,f],Attributes:[{Name:"max_health",Base:32f}]}

item replace entity @e[tag=new] weapon.mainhand with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:npc/calcite_arm",minecraft:custom_data={svm_ep.kill:1b}]
item replace entity @e[tag=new] weapon.offhand with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:npc/calcite_arm",minecraft:custom_data={svm_ep.kill:1b}]
execute as @e[tag=new] run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:npc/calcite_head",minecraft:unbreakable={},minecraft:custom_data={svm_ep.kill:1b}]
execute as @e[tag=new] run item replace entity @s armor.feet with iron_boots
execute as @e[tag=new] run item replace entity @s armor.legs with iron_leggings
execute as @e[tag=new] run item replace entity @s armor.chest with iron_chestplate



effect give @e[tag=new] minecraft:strength infinite 1 true
execute if predicate svm_ep:chance/25_percent run effect give @e[tag=new] minecraft:resistance infinite 0 true
execute if predicate svm_ep:chance/25_percent run effect give @e[tag=new] minecraft:resistance infinite 1 true
scoreboard players set @e[tag=new] svm_ep.p.phase_ability_06_delay 180
effect give @e[tag=new] slowness 8 0 true
effect give @e[tag=new] slowness 6 1 true
effect give @e[tag=new] slowness 4 2 true
effect give @e[tag=new] slowness 2 3 true

team join svm_ep.calcite_guardians @e[tag=new]
tag @e remove new

kill @s[tag=svm_ep.calcite_trap]