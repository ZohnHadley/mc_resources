scoreboard players set mana_drain svm_ep.numbers 0


execute store result score mana_drain svm_ep.numbers run fill ~6 ~6 ~6 ~-6 ~-6 ~-6 water[level=0] replace water[level=1]
execute store result score mana_drain2 svm_ep.numbers run fill ~6 ~6 ~6 ~-6 ~-6 ~-6 water[level=0] replace water[level=8]
scoreboard players operation mana_drain svm_ep.numbers += mana_drain2 svm_ep.numbers

scoreboard players operation mana_drain svm_ep.numbers *= %15 svm_ep.numbers
scoreboard players operation @s svm_ep.mana_drain += mana_drain svm_ep.numbers


execute if score mana_drain svm_ep.numbers matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:bubble_pop ~ ~ ~ 1.2 1.2 1.2 0 30
execute if score mana_drain svm_ep.numbers matches 1.. run playsound minecraft:item.bucket.fill master @a[distance=..20] ~ ~ ~ 0.35 0.85
