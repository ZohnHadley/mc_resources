tag @s add executor
scoreboard players set @s svm_ep.numbers 0
execute store result score @s svm_ep.numbers run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace water
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace minecraft:bubble_column
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 farmland replace farmland
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 cauldron replace water_cauldron
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 water replace kelp
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 water replace seagrass
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 sponge replace wet_sponge
scoreboard players operation @s svm_ep.mana_drain += @s svm_ep.numbers

scoreboard players operation @s svm_ep.p.water_collected += @s svm_ep.numbers
execute as @s[scores={svm_ep.numbers=1..}] run playsound minecraft:item.bucket.fill master @a[distance=..20] ~ ~ ~ 0.35 0.85
execute as @e[distance=..7,tag=svm_ep.water_droplet] run scoreboard players add @n[tag=executor] svm_ep.p.water_collected 4
execute if score @s svm_ep.p.water_collected >= @s svm_ep.mana_max run scoreboard players operation @s svm_ep.p.water_collected = @s svm_ep.mana_max


scoreboard players remove @e[distance=..7,scores={svm_ep.e.wet=10..}] svm_ep.e.wet 9
scoreboard players remove @e[distance=..7,scores={svm_ep.e.wet=3..}] svm_ep.e.wet 1
execute as @s[scores={svm_ep.numbers=1..}] align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:bubble_pop ~ ~ ~ 1.2 1.2 1.2 0 30

scoreboard players remove @e[distance=..7,tag=svm_ep.water_whirlpool] svm_ep.p.water_droplet_size 25
execute as @e[distance=..7,tag=svm_ep.water_launch] at @s run function svm_ep:power/water/manipulaion/launch/end
execute as @e[distance=..7,tag=svm_ep.water_droplet] at @s run function svm_ep:power/water/droplet/end

tag @s remove executor
