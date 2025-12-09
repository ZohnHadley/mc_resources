execute as @s[scores={svm_ep.using_move=1076}] at @s anchored eyes run function svm_ep:power/copy/sonic_boom/shoot
execute at @s[scores={svm_ep.using_move=1074}] at @s anchored eyes run playsound minecraft:entity.warden.sonic_boom master @a[distance=..40] ~ ~1 ~ 1 0.95 0.2


effect clear @s[scores={svm_ep.using_move=..1074}] slowness
scoreboard players reset @s[scores={svm_ep.using_move=..1070}] svm_ep.using_move