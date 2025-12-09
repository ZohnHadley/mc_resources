execute at @s run particle minecraft:dust{color:[18000000f,1f,1f],scale:1f} ~ ~1 ~ 2 2 2 0 5
execute at @s run particle minecraft:dust{color:[1f,0.25f,0.25f],scale:1f} ~ ~1 ~ 4 4 4 0 10
execute at @s run particle minecraft:dust{color:[0.5f,0.125f,0.125f],scale:1f} ~ ~1 ~ 6 6 6 0 25
effect give @s[scores={svm_ep.time_stopping=10}] blindness 1 0 true
effect clear @s[scores={svm_ep.time_stopping=1}] blindness
execute at @s[scores={svm_ep.time_stopping=1}] run playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 0.6 1.67
scoreboard players add @s svm_ep.p.time_ability_01_delay 1

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.time_stopping
function svm_ep:power/delay

title @s times 0 2 4
execute unless entity @s[scores={svm_ep.selected_style_ability=1..}] run title @s title [{"text":" "}]
execute unless entity @s[scores={svm_ep.selected_style_ability=1..}] run title @s subtitle ["",{"text":"| ","color":"#989898"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":" | ","color":"#989898"}]

execute if score %cooldown2 svm_ep.numbers matches 0 at @s run playsound minecraft:block.amethyst_cluster.hit master @a ~ ~ ~ 1.25 1.15