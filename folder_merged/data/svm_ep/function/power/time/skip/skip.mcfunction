tag @s add executor

scoreboard players add @s svm_ep.lightning_flash_length 16

execute at @s run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..30] ~ ~ ~ 0.85 1.1

execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~ 0.7 0.7 0.7 0.4 3 force @a[distance=..40]
execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/time/skip/raycast
execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.7 ~ 0.7 0.7 0.7 0.4 3 force @a[distance=..40]

execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..30] ~ ~ ~ 0.45 2

effect clear @s minecraft:slowness
scoreboard players add @s svm_ep.extra_tick_mana 1000
scoreboard players add @s svm_ep.extra_tick_power_user 1000
scoreboard players add @s svm_ep.extra_tick_fighting_style_user 1000

scoreboard players add @s[scores={svm_ep.using_move=..280}] svm_ep.extra_tick_mana 2000
scoreboard players add @s[scores={svm_ep.using_move=..280}] svm_ep.extra_tick_power_user 2000
scoreboard players add @s[scores={svm_ep.using_move=..280}] svm_ep.extra_tick_fighting_style_user 2000


scoreboard players reset @s svm_ep.using_move

tag @s remove executor
