execute if score %cooldown1 svm_ep.numbers matches 0 run return run scoreboard players set %cooldown1 svm_ep.numbers 0
scoreboard players operation %cooldown1 svm_ep.numbers -= %WORLD svm_ep.tick