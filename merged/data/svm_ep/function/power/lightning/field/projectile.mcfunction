scoreboard players remove @s svm_ep.projectile 1
execute as @s[scores={svm_ep.projectile=..0}] run playsound minecraft:item.armor.equip_netherite master @a[distance=..20] ~ ~ ~ 2 0
execute as @s[scores={svm_ep.projectile=..0}] run particle minecraft:crit ~ ~ ~ 0 0 0 4 110
execute as @s[scores={svm_ep.projectile=..0}] run playsound minecraft:entity.allay.hurt ambient @a ~ ~ ~ 2 2
kill @s[scores={svm_ep.projectile=..0}]
playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 2 1.5
particle minecraft:electric_spark ~ ~ ~ 0.21 0.21 0.21 1 5
