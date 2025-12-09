item modify entity @s weapon svm_ep:consume
effect give @s speed 10 0 true
effect give @s[scores={svm_ep.talent=6}] speed 15 2 true
effect give @s[scores={svm_ep.talent=6}] strength 15 0 true
effect give @s[scores={svm_ep.talent=6}] jump_boost 15 2 true
scoreboard players set @s svm_ep.using_move 31514357
execute at @s run playsound minecraft:entity.player.burp master @a[distance=..30] ~ ~ ~ 1 1.6
execute at @s anchored eyes run particle minecraft:item{item:sugar} ^ ^-0.1 ^0.45 0 0 0 0.075 8