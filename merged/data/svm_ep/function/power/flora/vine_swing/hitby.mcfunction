tag @s remove hitby
execute if score @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id run return 0
execute as @s[gamemode=spectator] run return 0

execute as @s[type=!player] run function svm_ep:power/flora/vine_swing/hitby/non_player
execute as @s[type=player] run function svm_ep:power/flora/vine_swing/hitby/player
kill @n[tag=executor]

effect give @s minecraft:slowness 2 4 true

scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.stunned 150
playsound minecraft:block.cobweb.break master @a[distance=..25] ~ ~ ~ 1 0

#execute at @s run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~1.25 ~0.25 ice replace #svm_ep:no_physical_hitbox

