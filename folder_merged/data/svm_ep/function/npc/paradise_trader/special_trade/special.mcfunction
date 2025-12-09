data modify entity @s Offers.Recipes append value {maxUses:1,buy:{id:"stone",count:1b},sell:{id:"stone",count:1b},xp:50,rewardExp:0b}
loot replace entity @n[tag=svm_ep.tick_storage] container.0 loot svm_ep:npc/trade/paradise_trader/special/buy
data modify entity @s Offers.Recipes[-1].buy set from entity @n[tag=svm_ep.tick_storage] item

item replace entity @n[tag=svm_ep.tick_storage] container.0 with minecraft:air
#execute if predicate svm_ep:chance/33_percent run loot replace entity @n[tag=svm_ep.tick_storage] container.0 loot svm_ep:npc/trade/paradise_trader/buy2
data modify entity @s Offers.Recipes[-1].buyB set from entity @n[tag=svm_ep.tick_storage] item

loot replace entity @n[tag=svm_ep.tick_storage] container.0 loot svm_ep:npc/trade/paradise_trader/special/sell
data modify entity @s Offers.Recipes[-1].sell set from entity @n[tag=svm_ep.tick_storage] item

