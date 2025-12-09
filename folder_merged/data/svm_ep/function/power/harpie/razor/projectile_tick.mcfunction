
scoreboard players add @s svm_ep.lifetime 1


execute as @s[tag=svm_ep.active] run function svm_ep:power/harpie/razor/active
execute as @s[tag=!svm_ep.active] run function svm_ep:power/harpie/razor/not_active
tag @s[scores={svm_ep.lifetime=120..}] remove svm_ep.active
kill @s[scores={svm_ep.lifetime=520..}]