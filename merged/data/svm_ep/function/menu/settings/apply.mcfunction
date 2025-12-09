scoreboard players operation %full svm_ep.numbers = @s svm_ep.menu

scoreboard players remove %full svm_ep.numbers 100000
scoreboard players operation @s svm_ep.ability_input = %full svm_ep.numbers
scoreboard players operation @s svm_ep.ability_input /= %10 svm_ep.numbers

scoreboard players operation @s svm_ep.give_ability_item = %full svm_ep.numbers
scoreboard players operation @s svm_ep.give_ability_item %= %10 svm_ep.numbers











