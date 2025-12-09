playsound minecraft:block.wet_sponge.dries master @a[distance=..25] ~ ~ ~ 0.25 1.2
particle minecraft:poof ~ ~0.3 ~ 0.32 0.32 0.32 0.05 8
execute as @e[distance=..1.6,type=!#svm_ep:technical] run damage @s 2 minecraft:on_fire
execute as @e[dx=0,type=!#svm_ep:technical] run damage @s 2 minecraft:on_fire
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation":1}}}}}
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/creation_manipulation":1}}}}}
scoreboard players add @s svm_ep.mana_drain 35
