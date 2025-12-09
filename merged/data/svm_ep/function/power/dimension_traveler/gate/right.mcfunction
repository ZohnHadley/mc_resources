execute at @s run playsound minecraft:block.stone_button.click_off master @a[tag=same_id] ~ ~ ~ 1 2

#1 OVERWORLD
#2 NETHER
#3 END
#4 PARADISE
#5 CHERRY ISLAND

function svm_ep:power/dimension_traveler/gate/switch



execute if dimension minecraft:overworld run scoreboard players add @s[scores={svm_ep.p.dimension_traveler_gate_destination=1}] svm_ep.p.dimension_traveler_gate_destination 1
tellraw @s[scores={svm_ep.p.dimension_traveler_gate_destination=1}] [{"text":"| D","color":"gray"},{"text":"e","color":"#BBBBBB"},{"text":"s","color":"#C7C7C7"},{"text":"t","color":"#D5D5D5"},{"text":"i","color":"#E6E6E6"},{"text":"n","color":"#D5D5D5"},{"text":"ati","color":"#C7C7C7"},{"text":"o","color":"#BBBBBB"},{"text":"n: ","color":"gray"},{"text":"Overworld","color":"#84DE16"}]
tellraw @s[scores={svm_ep.p.dimension_traveler_gate_destination=2}] [{"text":"| D","color":"gray"},{"text":"e","color":"#BBBBBB"},{"text":"s","color":"#C7C7C7"},{"text":"t","color":"#D5D5D5"},{"text":"i","color":"#E6E6E6"},{"text":"n","color":"#D5D5D5"},{"text":"ati","color":"#C7C7C7"},{"text":"o","color":"#BBBBBB"},{"text":"n: ","color":"gray"},{"text":"Nether","color":"#B51304"}]
tellraw @s[scores={svm_ep.p.dimension_traveler_gate_destination=3}] [{"text":"| D","color":"gray"},{"text":"e","color":"#BBBBBB"},{"text":"s","color":"#C7C7C7"},{"text":"t","color":"#D5D5D5"},{"text":"i","color":"#E6E6E6"},{"text":"n","color":"#D5D5D5"},{"text":"ati","color":"#C7C7C7"},{"text":"o","color":"#BBBBBB"},{"text":"n: ","color":"gray"},{"text":"End","color":"#ECE7AC"}]
tellraw @s[scores={svm_ep.p.dimension_traveler_gate_destination=4}] [{"text":"| D","color":"gray"},{"text":"e","color":"#BBBBBB"},{"text":"s","color":"#C7C7C7"},{"text":"t","color":"#D5D5D5"},{"text":"i","color":"#E6E6E6"},{"text":"n","color":"#D5D5D5"},{"text":"ati","color":"#C7C7C7"},{"text":"o","color":"#BBBBBB"},{"text":"n:","color":"gray"},{"text":" Paradise","color":"#4EEAC0"}]
tellraw @s[scores={svm_ep.p.dimension_traveler_gate_destination=5}] [{"text":"| D","color":"gray"},{"text":"e","color":"#BBBBBB"},{"text":"s","color":"#C7C7C7"},{"text":"t","color":"#D5D5D5"},{"text":"i","color":"#E6E6E6"},{"text":"n","color":"#D5D5D5"},{"text":"ati","color":"#C7C7C7"},{"text":"o","color":"#BBBBBB"},{"text":"n:","color":"gray"},{"text":" Cherry Island","color":"#ff6298"}]
