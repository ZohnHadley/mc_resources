#data modify entity @s Offers set value {}

summon minecraft:item_display ~ ~ ~ {Tags:["svm_ep.tick_storage"]}

#2
data modify entity @s Offers.Recipes append value {maxUses:5,buy:{id:"stone",count:1b},sell:{id:"stone",count:1b},xp:0,rewardExp:0b}
loot replace entity @n[tag=svm_ep.tick_storage] container.0 loot svm_ep:npc/trade/pemc/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @n[tag=svm_ep.tick_storage] item

loot replace entity @n[tag=svm_ep.tick_storage] container.0 loot svm_ep:npc/trade/pemc/buy
data modify entity @s Offers.Recipes[-1].buyB set from entity @n[tag=svm_ep.tick_storage] item

loot replace entity @n[tag=svm_ep.tick_storage] container.0 loot svm_ep:items/golden/flesh
data modify entity @s Offers.Recipes[-1].sell set from entity @n[tag=svm_ep.tick_storage] item

#function svm_ep:npc/pemc/add_trade
#function svm_ep:npc/pemc/add_trade
#execute if predicate svm_ep:chance/33_percent run function svm_ep:npc/pemc/add_trade
#execute if predicate svm_ep:chance/33_percent run function svm_ep:npc/pemc/add_trade
#execute if predicate svm_ep:chance/33_percent run function svm_ep:npc/pemc/add_trade

kill @n[tag=svm_ep.tick_storage]