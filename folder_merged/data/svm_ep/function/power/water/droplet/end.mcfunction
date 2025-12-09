execute unless entity @s run return 0
playsound minecraft:block.pointed_dripstone.drip_water_into_cauldron master @a[distance=..25] ~ ~ ~ 1.2 1 1
particle minecraft:bubble_pop
particle minecraft:splash ~ ~ ~ 0.2 0.2 0.2 0 100

execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.3
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.3
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.3
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.3
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox run tp @s ^ ^ ^-0.3
execute at @s run function svm_ep:power/water/creation/effect

execute at @s unless entity @s[scores={svm_ep.p.water_droplet_size=1..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/0":1}}}}}

execute at @s[scores={svm_ep.p.water_droplet_size=1}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/1":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=2}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/2":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=3}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/3":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=4}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/4":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=5}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/5":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=6}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/6":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=7}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/7":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=8}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/8":1}}}}}
execute at @s[scores={svm_ep.p.water_droplet_size=9..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/9":1}}}}}
kill @s[type=!player]
