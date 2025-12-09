execute unless entity @p[distance=..150] run return fail
scoreboard players set @e[tag=svm_ep.domain_expansion_barrier,distance=..25] svm_ep.kill_after 2
scoreboard players add @e[tag=svm_ep.domain_expansion_barrier,distance=..25,limit=120,sort=random] svm_ep.kill_after 1
scoreboard players add @e[tag=svm_ep.domain_expansion_barrier,distance=..25,limit=120,sort=random] svm_ep.kill_after 1
scoreboard players add @e[tag=svm_ep.domain_expansion_barrier,distance=..25,limit=120,sort=random] svm_ep.kill_after 2
scoreboard players add @e[tag=svm_ep.domain_expansion_barrier,distance=..25,limit=60,sort=random] svm_ep.kill_after 2
scoreboard players add @e[tag=svm_ep.domain_expansion_barrier,distance=..25,limit=30,sort=random] svm_ep.kill_after 2
execute at @e[tag=svm_ep.domain_expansion_barrier,distance=..25] positioned ^ ^ ^3.5 run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 minecraft:air replace barrier
execute at @e[tag=svm_ep.domain_expansion_barrier,distance=..25] positioned ^ ^ ^3.5 run fill ~2.5 ~2.5 ~2.5 ~-2.5 ~-2.5 ~-2.5 minecraft:barrier replace minecraft:structure_block{name:"svm_ep:do_not_name_structures_that_120310"}
kill @s
