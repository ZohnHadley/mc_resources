execute if score %SENT_PARTICLES svm_ep.numbers matches 1 run return 0
function svm_ep:entity/effect/flora_creaking_heart/trail with entity @s
scoreboard players set %SENT_PARTICLES svm_ep.numbers 1