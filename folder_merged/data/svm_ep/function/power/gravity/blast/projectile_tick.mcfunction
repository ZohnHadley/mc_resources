
scoreboard players add @s svm_ep.lifetime 1




#function svm_ep:power/gravity/blast/move


execute at @s[scores={svm_ep.lifetime=..-29}] run function svm_ep:power/gravity/blast/tick/animation
execute at @s[scores={svm_ep.lifetime=-30..}] run function svm_ep:power/gravity/blast/tick/projectile




kill @s[scores={svm_ep.lifetime=25..}]