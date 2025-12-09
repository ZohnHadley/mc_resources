scoreboard players add @s svm_ep.using_move 1
scoreboard players remove @s svm_ep.p.iceberg_state 1

execute as @s[scores={svm_ep.p.iceberg_state=2..}] at @s run return run function svm_ep:power/ice/berg/charged
execute as @s[scores={svm_ep.p.iceberg_state=1}] at @s run return run function svm_ep:power/ice/berg/shoot
function svm_ep:power/ice/berg/charge

