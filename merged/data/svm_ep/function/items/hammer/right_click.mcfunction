execute unless entity @s[scores={svm_ep.hammer_delay=1..}] run scoreboard players add @s svm_ep.charged_hammer 1
scoreboard players reset @s[scores={svm_ep.charged_hammer=2..}] svm_ep.charged_hammer
execute as @s[scores={svm_ep.hammer_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.hammer_delay
execute as @s[scores={svm_ep.hammer_delay=1..}] run function svm_ep:power/delay
execute as @s[scores={svm_ep.hammer_delay=1..}] run tellraw @s ["",{"text":"On delay! ","color":"red"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":"s","color":"red"}]
