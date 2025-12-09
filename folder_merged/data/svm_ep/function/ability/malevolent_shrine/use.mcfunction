scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s[scores={svm_ep.used_move=..300}] svm_ep.used_move 300


effect give @e[distance=..25] minecraft:slowness 2 10 true
effect give @e[distance=..25] minecraft:weakness 2 10 true
effect give @e[distance=..25] minecraft:darkness 5 0 true
scoreboard players set @s svm_ep.using_move 40100
execute at @s run playsound minecraft:block.bell.use master @a[distance=..60] ~ ~ ~ 2 0.78
function svm_ep:system/macro/command {command:"emotes play domain_expansion.malevolent_shrine"}