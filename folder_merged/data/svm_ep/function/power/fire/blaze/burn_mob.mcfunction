function svm_ep:system/get_fire
execute as @s[scores={fire=1..}] run scoreboard players add @s svm_ep.p.fire_on_fire 1
scoreboard players add @s[scores={svm_ep.p.fire_on_fire=1..15}] svm_ep.p.fire_on_fire 1
#execute unless entity @s[scores={fire=1..}] if predicate svm_ep:chance/10_percent run scoreboard players add @s svm_ep.p.fire_on_fire 10
effect give @s minecraft:slowness 1 2 true
execute at @s[scores={fire=1..}] run function svm_ep:power/fire/blaze/particle
damage @s[scores={fire=1..}] 3.5 svm_ep:fire by @n[tag=executor,scores={svm_ep.p.fire_arms=1..}]
damage @s[scores={fire=1..}] 1.5 svm_ep:fire by @n[tag=executor]


function svm_ep:system/get_fire
execute as @s[scores={fire=1..}] run scoreboard players add @s svm_ep.p.fire_on_fire 1
scoreboard players add @s[scores={svm_ep.p.fire_on_fire=1..15}] svm_ep.p.fire_on_fire 1
#execute unless entity @s[scores={fire=1..}] if predicate svm_ep:chance/10_percent run scoreboard players add @s svm_ep.p.fire_on_fire 10
effect give @s minecraft:slowness 1 2 true
execute at @s[scores={fire=1..}] run function svm_ep:power/fire/blaze/particle

scoreboard players set @s svm_ep.deal_damage 15
scoreboard players operation @s svm_ep.deal_damage *= @n[tag=executor] svm_ep.charge_length
scoreboard players operation @s svm_ep.deal_damage /= %10 svm_ep.numbers
execute if entity @n[tag=executor,scores={svm_ep.p.fire_arms=1..}] run scoreboard players operation @s svm_ep.deal_damage *= %5 svm_ep.numbers
execute if entity @n[tag=executor,scores={svm_ep.p.fire_arms=1..}] run scoreboard players operation @s svm_ep.deal_damage /= %2 svm_ep.numbers

function svm_ep:damage/deal_normal {"damage":"1","attacker":"@n[tag=executor]","type":"'svm_ep:no_cooldown_projectile'"}