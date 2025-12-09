$effect give @s minecraft:hunger 5 $(hunger_level) true
execute as @s[scores={svm_ep.p.time_accelerated_level=10..,svm_ep.food=..1}] run damage @s 1 minecraft:starve