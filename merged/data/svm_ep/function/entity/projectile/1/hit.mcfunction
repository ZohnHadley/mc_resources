summon marker ~ ~ ~ {Tags:["svm_ep.crack_1","svm_ep.crack"]}

scoreboard players add @a[distance=..5] svm_ep.shaking 3

particle minecraft:smoke ~ ~ ~ 0 0 0 0.5 5
playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.75 0

execute at @s run particle dust{color:[0f,0f,0.1f],scale:0.5f} ~ ~ ~ 1 1 1 0 15
execute at @s run particle dust{color:[0.1f,0.1f,0.2f],scale:0.7f} ~ ~ ~ 0.5 0.5 0.5 0 10

execute as @e[tag=hit] run function svm_ep:damage/deal_normal {"damage":"5","attacker":"@e[limit=1,tag=same_id]","type":"mob_attack"}
tag @e remove hit
kill @s