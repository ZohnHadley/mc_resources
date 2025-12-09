tag @s add executor

scoreboard players add @s svm_ep.lifetime 1


#execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1 0.8



tag @s add executor

execute at @s as @a[scores={svm_ep.p.gravity_repel_zone=1}] run tag @s add immune
execute at @s as @e[type=marker,tag=svm_ep.crack] run tag @s add immune
execute unless entity @s[scores={svm_ep.p.gravity_pull_charge=41..}] at @s run function svm_ep:power/gravity/pull/charge/small
execute as @s[scores={svm_ep.p.gravity_pull_charge=41..80}] at @s run function svm_ep:power/gravity/pull/charge/medium
execute as @s[scores={svm_ep.p.gravity_pull_charge=81..}] at @s run function svm_ep:power/gravity/pull/charge/large



tag @a remove immune
tag @s remove executor


#tellraw @a ["",{"text":"XD ","color":"#858585"},{"score":{"name":"@s","objective":"svm_ep.lifetime"},"color":"#858585"}]


execute as @s[scores={svm_ep.lifetime=40..}] at @s run function svm_ep:power/gravity/pull/end

tag @s remove executor
