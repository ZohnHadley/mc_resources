effect give @s[scores={svm_ep.using_move=80..}] minecraft:slowness 1 2 true
effect give @s minecraft:weakness 1 3 true

#execute at @s[scores={svm_ep.using_move=97}] run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..20] ~ ~ ~ 3 1.2
#execute at @s[scores={svm_ep.using_move=90}] run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..20] ~ ~ ~ 3 1.2
#execute at @s[scores={svm_ep.using_move=85}] run playsound minecraft:entity.player.attack.sweep hostile @a[distance=..20] ~ ~ ~ 3 1.2

execute as @s[scores={svm_ep.using_move=96}] at @s run function svm_ep:power/flora/thorned_slashes/punch
execute as @s[scores={svm_ep.using_move=93}] at @s run function svm_ep:power/flora/thorned_slashes/punch
execute as @s[scores={svm_ep.using_move=90}] at @s run function svm_ep:power/flora/thorned_slashes/punch

execute at @s[scores={svm_ep.using_move=85}] run tp @s ~ ~ ~ ~60 ~
execute at @s[scores={svm_ep.using_move=77..84}] run tp @s ~ ~ ~ ~-15 ~

execute as @s[scores={svm_ep.using_move=84}] at @s run function svm_ep:power/flora/thorned_slashes/punch2
execute as @s[scores={svm_ep.using_move=82}] at @s run function svm_ep:power/flora/thorned_slashes/punch2
execute as @s[scores={svm_ep.using_move=80}] at @s run function svm_ep:power/flora/thorned_slashes/punch2
execute as @s[scores={svm_ep.using_move=78}] at @s run function svm_ep:power/flora/thorned_slashes/punch2
execute as @s[scores={svm_ep.using_move=76}] at @s run function svm_ep:power/flora/thorned_slashes/punch2

execute at @s[scores={svm_ep.using_move=76}] run tp @s ~ ~ ~ ~60 ~

scoreboard players reset @s svm_ep.e.flora_thorned
scoreboard players reset @s[scores={svm_ep.using_move=68}] svm_ep.using_move
