fill ~1 ~1 ~1 ~-1 ~1 ~-1 minecraft:jigsaw replace #svm_ep:air
execute as @s[scores={svm_ep.p.water_whirlpool_size=1}] run function svm_ep:power/water/manipulation/whirlpool/pull/1
execute as @s[scores={svm_ep.p.water_whirlpool_size=2}] run function svm_ep:power/water/manipulation/whirlpool/pull/2
execute as @s[scores={svm_ep.p.water_whirlpool_size=3}] run function svm_ep:power/water/manipulation/whirlpool/pull/3
execute as @s[scores={svm_ep.p.water_whirlpool_size=4}] run function svm_ep:power/water/manipulation/whirlpool/pull/4
execute as @s[scores={svm_ep.p.water_whirlpool_size=5}] run function svm_ep:power/water/manipulation/whirlpool/pull/5
execute as @s[scores={svm_ep.p.water_whirlpool_size=6}] run function svm_ep:power/water/manipulation/whirlpool/pull/6
execute as @s[scores={svm_ep.p.water_whirlpool_size=7}] run function svm_ep:power/water/manipulation/whirlpool/pull/7
execute as @s[scores={svm_ep.p.water_whirlpool_size=8}] run function svm_ep:power/water/manipulation/whirlpool/pull/8
execute as @s[scores={svm_ep.p.water_whirlpool_size=9..}] run function svm_ep:power/water/manipulation/whirlpool/pull/9
execute unless entity @s[scores={svm_ep.p.water_whirlpool_size=1..}] run function svm_ep:power/water/manipulation/whirlpool/pull/0
fill ~1 ~1 ~1 ~-1 ~1 ~-1 air replace minecraft:jigsaw
