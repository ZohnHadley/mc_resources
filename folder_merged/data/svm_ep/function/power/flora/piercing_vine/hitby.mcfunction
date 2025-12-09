tag @s remove hitby
scoreboard players operation @s svm_ep.deal_damage = @n[tag=executor] svm_ep.lifetime
scoreboard players operation @s svm_ep.deal_damage -= %piercing_vine_ticks_without_amplification svm_ep.world_settings
scoreboard players set @s[scores={svm_ep.deal_damage=..0}] svm_ep.deal_damage 0
scoreboard players operation @s svm_ep.deal_damage /= %piercing_vine_damage_divide svm_ep.world_settings
function svm_ep:damage/deal_normal {"damage":"1","attacker":"@n[tag=executor]","type":"'minecraft:mob_projectile'"}

damage @s 0.25 svm_ep:no_cooldown_projectile by @n[tag=same_id]
effect give @s minecraft:slowness 5 4 true
particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.8 10