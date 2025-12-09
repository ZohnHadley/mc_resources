#execute store result score @s svm_ep.numbers run random value 5..10
scoreboard players set @s svm_ep.numbers 10
scoreboard players operation @s svm_ep.ability_points += @s svm_ep.numbers
tellraw @s [{"text":"| ","color":"gray"},{"text":"Gained","color":"red"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.numbers"},"bold":true,"color":"white"},{"text":" ability points","color":"red"}]
