tag @s remove hitby
effect give @s minecraft:slowness 1 3 true
damage @s 1 minecraft:true by @a[tag=executor,limit=1]
scoreboard players remove @e[tag=executor] svm_ep.p.void_step_charge 3
scoreboard players remove @s[scores={svm_ep.projectile=1..}] svm_ep.projectile 4
kill @s[scores={svm_ep.projectile=..0}]