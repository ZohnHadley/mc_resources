execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run playsound minecraft:block.rooted_dirt.break ambient @a[distance=..15] ~ ~ ~ 2 0
execute if predicate svm_ep:chance/40_percent run function svm_ep:system/crack/randomize_stripe
execute if predicate svm_ep:chance/33_percent run scoreboard players add @s svm_ep.lifetime 1
execute if predicate svm_ep:chance/5_percent run function svm_ep:system/crack/summon_stripe2
function svm_ep:system/crack/destroy_1
execute if predicate svm_ep:chance/33_percent run function svm_ep:system/crack/destroy_2

tp @s ^ ^ ^0.9
kill @s[scores={svm_ep.lifetime=6..}]