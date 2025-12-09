scoreboard players add @s svm_ep.lifetime 1
execute as @s[scores={svm_ep.lifetime=300..}] run return run function svm_ep:power/telekinesis/ground_pull/end





#execute as @s[scores={svm_ep.lifetime=..6,svm_ep.tick=1}] run return 1
tp @s ^ ^ ^2 ~ ~2.5
execute at @s run tp @s[scores={svm_ep.lifetime=8..}] ^ ^ ^1 ~ ~2.5


execute unless score @s svm_ep.p.telekinesis_ground_pull_size matches 1.. run function svm_ep:power/telekinesis/ground_pull/size/0/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=1}] run function svm_ep:power/telekinesis/ground_pull/size/1/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=2}] run function svm_ep:power/telekinesis/ground_pull/size/2/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=3}] run function svm_ep:power/telekinesis/ground_pull/size/3/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=4}] run function svm_ep:power/telekinesis/ground_pull/size/4/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=5}] run function svm_ep:power/telekinesis/ground_pull/size/5/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=6}] run function svm_ep:power/telekinesis/ground_pull/size/6/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=7}] run function svm_ep:power/telekinesis/ground_pull/size/7/use
execute as @s[scores={svm_ep.p.telekinesis_ground_pull_size=8}] run function svm_ep:power/telekinesis/ground_pull/size/8/use
execute if score %can_move svm_ep.numbers matches 1 run tag @s add svm_ep.telekinesis_ground_pull_moved
execute if score %can_move svm_ep.numbers matches 0 run tp @s ~ ~ ~
execute if score %can_move svm_ep.numbers matches 0 run scoreboard players add @s[tag=svm_ep.telekinesis_ground_pull_moved] svm_ep.lifetime 2

execute as @s[scores={svm_ep.lifetime=11..}] if score %can_move svm_ep.numbers matches 0 run function svm_ep:power/telekinesis/ground_pull/end


