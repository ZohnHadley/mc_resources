tag @s add svm_ep.razor_feather
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 1
scoreboard players set @s svm_ep.lifetime 0
item replace entity @s container.0 with minecraft:feather
data merge entity @s {teleport_duration:1}

execute store result entity @s Rotation[0] double 1 run random value 0..360

execute store result score @s svm_ep.numbers run random value 0..8
execute at @s run tp @s ~ ~0.5 ~
execute at @s run tp @s[scores={svm_ep.numbers=1..}] ^ ^ ^0.63
execute at @s run tp @s[scores={svm_ep.numbers=2..}] ^ ^ ^0.63
execute at @s run tp @s[scores={svm_ep.numbers=3..}] ^ ^ ^0.63
execute at @s run tp @s[scores={svm_ep.numbers=4..}] ^ ^ ^0.63
execute at @s run tp @s[scores={svm_ep.numbers=5..}] ^ ^ ^0.63
execute at @s run tp @s[scores={svm_ep.numbers=6..}] ^ ^ ^0.63
execute at @s run tp @s[scores={svm_ep.numbers=7..}] ^ ^ ^0.53

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.33
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.33
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.33

function svm_ep:system/set_random_rotation_non_player
execute at @s run playsound minecraft:entity.llama.spit master @a[distance=..30] ~ ~ ~ 0.2 1.06
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..20] ~ ~ ~ 0.5 2
execute at @s anchored eyes positioned ^ ^ ^0.6 run particle minecraft:item{item:feather} ~ ~0.5 ~ 0 0 0 0.6 30
