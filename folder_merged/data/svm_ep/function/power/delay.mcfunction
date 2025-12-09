#function svm_ep:power/delay
#PUT COOLDOWN FOR CALCULATION TO: %cooldown1 svm_ep.numbers
#LIKE THIS:
#scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.phase_ability_01_delay

scoreboard players operation %cooldown2 svm_ep.numbers = %cooldown1 svm_ep.numbers
scoreboard players operation %cooldown1 svm_ep.numbers /= %20 svm_ep.numbers

scoreboard players operation %cooldown2 svm_ep.numbers %= %20 svm_ep.numbers
scoreboard players operation %cooldown2 svm_ep.numbers /= %2 svm_ep.numbers

#DISPLAY SCORES ARE: %cooldown1-svm_ep.numbers | %cooldown2-svm_ep.numbers
#tellraw @s ["",{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"}},{"text":"."},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"}},{"text":"s"}]

#scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.phase_ability_01_delay
#function svm_ep:power/delay
#tellraw @s ["",{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"}},{"text":"."},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"}},{"text":"s"}]
