scoreboard players add @s svm_ep.lifetime 1
kill @s[scores={svm_ep.lifetime=2..}]
execute on target run function svm_ep:system/click_check/right
execute on attacker run function svm_ep:system/click_check/left
