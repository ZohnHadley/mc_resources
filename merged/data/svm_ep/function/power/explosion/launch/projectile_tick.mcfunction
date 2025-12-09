scoreboard players add @s svm_ep.lifetime 1
execute at @s run function svm_ep:power/explosion/launch/move
execute at @s[scores={svm_ep.p.explosion_launch_charge=25..}] run function svm_ep:power/explosion/launch/move2
execute at @s[scores={svm_ep.p.explosion_launch_charge=50..}] run function svm_ep:power/explosion/launch/move2
execute at @s[scores={svm_ep.p.explosion_launch_charge=75..}] run function svm_ep:power/explosion/launch/move2
execute at @s[scores={svm_ep.p.explosion_launch_charge=100..}] run function svm_ep:power/explosion/launch/move2
execute at @s[scores={svm_ep.p.explosion_launch_charge=125..}] run function svm_ep:power/explosion/launch/move2
execute at @s[scores={svm_ep.p.explosion_launch_charge=150..}] run function svm_ep:power/explosion/launch/move2
execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..20] ~ ~1 ~ 0.4 0

scoreboard players set @s[scores={svm_ep.p.explosion_launch_charge=180..}] svm_ep.p.explosion_launch_charge 180
scoreboard players remove @s[scores={svm_ep.p.explosion_launch_charge=1..}] svm_ep.lifetime 1
scoreboard players remove @s svm_ep.p.explosion_launch_charge 1
execute on passengers run tag @s add pass


#execute unless entity @e[tag=pass] run say 1
#tellraw @a ["",{"score":{"name":"@s","objective":"svm_ep.p.explosion_launch_charge"}},{"text":" LOL "},{"score":{"name":"LordGacie","objective":"svm_ep.p.explosion_launch_charge"}}]
#execute as @s[scores={svm_ep.lifetime=10..}] run say 2
#execute as @s[scores={svm_ep.p.explosion_launch_charge=..0}] run say 3

execute unless entity @e[tag=pass] run kill @s
execute on passengers run tag @s remove pass

kill @s[scores={svm_ep.lifetime=10..}]
kill @s[scores={svm_ep.p.explosion_launch_charge=..0}]
