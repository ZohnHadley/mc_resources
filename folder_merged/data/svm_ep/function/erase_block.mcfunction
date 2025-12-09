#execute unless score doBlocksDestroy svm_ep.gamerule matches 0 if block ~ ~ ~ minecraft:chest run fill ~ ~ ~ ~ ~ ~ air destroy
#execute unless score doBlocksDestroy svm_ep.gamerule matches 0 if block ~ ~ ~ minecraft:barrel run fill ~ ~ ~ ~ ~ ~ air destroy
execute unless score doBlocksDestroy svm_ep.gamerule matches 0 unless block ~ ~ ~ #svm_ep:indestructable run fill ~ ~ ~ ~ ~ ~ air