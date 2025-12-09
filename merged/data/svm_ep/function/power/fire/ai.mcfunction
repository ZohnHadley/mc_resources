execute unless entity @s[scores={svm_ep.p.fire_ability_04_delay=1..}] run function svm_ep:system/get_fire
execute as @s[scores={fire=1..}] unless entity @s[scores={svm_ep.p.fire_ability_04_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] at @s run function svm_ep:power/fire/ability/use/4
execute as @s[scores={svm_ep.p.fire_barrage_bullets=1..}] at @s run function svm_ep:power/fire/barrage/shoot
