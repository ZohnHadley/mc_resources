execute if predicate svm_ep:holding_ability as @s[scores={svm_ep.p.water_manipulation_tick=5..,svm_ep.selected_ability=5}] run return run scoreboard players set @s svm_ep.p.water_manipulation_state 6
execute if predicate svm_ep:holding_ability as @s[scores={svm_ep.p.water_manipulation_tick=10..}] run return run scoreboard players set @s svm_ep.p.water_manipulation_state 3
execute if predicate svm_ep:holding_ability run return 0
function svm_ep:power/water/manipulation/in_water/launch
