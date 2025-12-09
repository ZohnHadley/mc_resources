scoreboard players set @s svm_ep.effect 1
scoreboard players set @s svm_ep.e.harpie_grabbed 100
scoreboard players operation @s svm_ep.p.harpie_grabbed_by_id = @n[tag=executor] svm_ep.entity_id

playsound minecraft:entity.player.attack.knockback master @a[distance=..30] ~ ~ ~ 0.6 0
