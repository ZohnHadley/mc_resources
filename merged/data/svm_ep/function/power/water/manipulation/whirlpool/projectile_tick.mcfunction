scoreboard players add @s svm_ep.lifetime 1


execute at @s run function svm_ep:power/water/manipulation/whirlpool/pull

execute unless block ~ ~ ~ water run function svm_ep:power/water/manipulation/whirlpool/no_water

scoreboard players remove @s[scores={svm_ep.lifetime=80..}] svm_ep.p.water_droplet_size 1
execute as @s[scores={svm_ep.lifetime=80..}] run function svm_ep:power/water/manipulation/whirlpool/update_size
kill @s[scores={svm_ep.p.water_droplet_size=..0}]