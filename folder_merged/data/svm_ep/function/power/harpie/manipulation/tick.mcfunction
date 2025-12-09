scoreboard players add @s svm_ep.using_move 1
execute unless entity @e[tag=svm_ep.razor_feather] run function svm_ep:system/message/macro {"message":"No Razor Feathers found"}
execute unless entity @e[tag=svm_ep.razor_feather] run return run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute at @s run return run function svm_ep:power/harpie/manipulation/success
