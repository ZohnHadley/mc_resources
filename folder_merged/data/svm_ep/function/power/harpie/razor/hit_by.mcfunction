effect give @s slowness 3 0 true
execute at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..20] ~ ~ ~ 1 2
execute at @s run playsound minecraft:item.trident.hit master @a[distance=..20] ~ ~ ~ 1 1.3
execute if score @n[tag=executor] svm_ep.lifetime matches ..120 run damage @s 3.5 no_cooldown by @e[tag=same_id,limit=1]
kill @n[tag=executor]
