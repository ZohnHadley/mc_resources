tag @s remove hitby
execute at @s anchored eyes positioned ^ ^ ^ unless block ~ ~ ~ minecraft:water facing entity @n[tag=executor] eyes positioned ^ ^ ^-0.5 run return run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/1":1}}}}}
scoreboard players add @n[tag=executor] svm_ep.mana_drain 15
scoreboard players set @s svm_ep.effect 1
scoreboard players set @s svm_ep.e.wet_splashed 15
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.wet 6


scoreboard players set @s svm_ep.numbers 0

execute store result score air svm_ep.numbers run data get entity @s Air

execute if score air svm_ep.numbers matches ..20 run scoreboard players add @s svm_ep.numbers 1
execute if score air svm_ep.numbers matches ..0 run scoreboard players add @s svm_ep.numbers 2
scoreboard players add @s[scores={svm_ep.e.wet=100..}] svm_ep.numbers 1
scoreboard players add @s[scores={svm_ep.e.wet=80..}] svm_ep.numbers 1

damage @s[scores={svm_ep.numbers=1}] 1 minecraft:drown by @n[tag=executor]
damage @s[scores={svm_ep.numbers=2}] 2 minecraft:drown by @n[tag=executor]
damage @s[scores={svm_ep.numbers=3}] 3 minecraft:drown by @n[tag=executor]
damage @s[scores={svm_ep.numbers=4}] 4 minecraft:drown by @n[tag=executor]
damage @s[scores={svm_ep.numbers=5}] 5 minecraft:drown by @n[tag=executor]
