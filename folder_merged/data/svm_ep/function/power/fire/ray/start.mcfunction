scoreboard players set @s svm_ep.using_move 450
effect give @s minecraft:slowness 1 2 true
scoreboard players operation @s svm_ep.p.fire_ray = @s svm_ep.p.fire_barrage_bullets
scoreboard players add @s svm_ep.p.fire_ray 10
scoreboard players reset @s svm_ep.p.fire_barrage_bullets

execute at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.4 2
function svm_ep:system/macro/command {command:"emotes play burning_ray_start"}
