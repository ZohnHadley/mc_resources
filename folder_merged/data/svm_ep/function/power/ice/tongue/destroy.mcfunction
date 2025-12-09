scoreboard players set @s svm_ep.numbers 0
execute store result score @s svm_ep.numbers run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #minecraft:ice
execute as @s[scores={svm_ep.numbers=1..}] run particle block{block_state:ice} ~ ~ ~ 1 1 1 0.45 30
execute as @s[scores={svm_ep.numbers=1..}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 0.85 0.93
kill @s