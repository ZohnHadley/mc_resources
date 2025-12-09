execute as @s[scores={svm_ep.using_move=1..100}] at @s run function svm_ep:power/healing/heal/tick
execute as @s[scores={svm_ep.using_move=101..200}] at @s run function svm_ep:power/healing/regenerational_aura/start_tick
execute as @s[scores={svm_ep.using_move=201..300}] at @s run function svm_ep:power/healing/marking/tick
execute as @s[scores={svm_ep.using_move=301..400}] at @s run function svm_ep:power/healing/health_spread/tick
execute as @s[scores={svm_ep.using_move=401..500}] at @s run function svm_ep:power/healing/helping_hand/tick
execute as @s[scores={svm_ep.using_move=501..600}] at @s run function svm_ep:power/healing/immortality/start_tick


execute as @s[scores={svm_ep.p.healing_aura=1..}] run function svm_ep:power/healing/regenerational_aura/tick
execute as @s[scores={svm_ep.p.healing_immortality=1..}] run function svm_ep:power/healing/immortality/tick