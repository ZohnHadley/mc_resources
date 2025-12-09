$execute store result storage svm_ep:power temp.rolled_power int 1 run random value 1..$(total_rollable_powers)
#execute run scoreboard players get %ROLLED_POWER svm_ep.numbers

function svm_ep:power/roll_macro2 with storage svm_ep:power temp
