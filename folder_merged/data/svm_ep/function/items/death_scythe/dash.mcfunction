execute unless entity @s[tag=svm_ep.death_user] unless entity @s[tag=svm_ep.copy_user,scores={svm_ep.p.copy_ability_35_count=1..}] run return 0
execute as @s[tag=svm_ep.copy_user,scores={svm_ep.p.copy_ability_35_count=1..}] run function svm_ep:power/copy/power/death/drain




scoreboard players set $strength player_motion.api.launch 10000
function player_motion:api/launch_looking

playsound minecraft:entity.breeze.hurt master @a[distance=..25] ~ ~ ~ 1 1.2
particle minecraft:smoke ~ ~1 ~ 1 1 1 0.1 100



execute store result score %add_cooldown svm_ep.numbers if items entity @s hotbar.* *[minecraft:custom_data~{svm_ep.item:{id:death_scythe}}]
#scoreboard players operation %add_cooldown svm_ep.numbers *= %100 svm_ep.numbers
scoreboard players add %add_cooldown svm_ep.numbers 1
scoreboard players operation %cooldown_new ci.math *= %add_cooldown svm_ep.numbers


