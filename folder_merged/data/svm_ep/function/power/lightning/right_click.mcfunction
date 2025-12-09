#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=4..,svm_ep.p.lightning_ability_15_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.lightning_ability_15_delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=4..,svm_ep.p.lightning_ability_15_delay=1..}] run function svm_ep:power/delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=4..,svm_ep.p.lightning_ability_15_delay=1..}] run tellraw @s ["",{"text":"On delay! ","color":"red"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":"s","color":"red"}]

#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=3,svm_ep.p.lightning_ability_14_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.lightning_ability_14_delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=3,svm_ep.p.lightning_ability_14_delay=1..}] run function svm_ep:power/delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=3,svm_ep.p.lightning_ability_14_delay=1..}] run tellraw @s ["",{"text":"On delay! ","color":"red"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":"s","color":"red"}]

#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=2,svm_ep.p.lightning_ability_03_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.lightning_ability_03_delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=2,svm_ep.p.lightning_ability_03_delay=1..}] run function svm_ep:power/delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=2,svm_ep.p.lightning_ability_03_delay=1..}] run tellraw @s ["",{"text":"On delay! ","color":"red"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":"s","color":"red"}]

#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=1,svm_ep.p.lightning_ability_02_delay=1..}] run scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.lightning_ability_02_delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=1,svm_ep.p.lightning_ability_02_delay=1..}] run function svm_ep:power/delay
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=1,svm_ep.p.lightning_ability_02_delay=1..}] run tellraw @s ["",{"text":"On delay! ","color":"red"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":"s","color":"red"}]


#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=4..}] unless entity @s[scores={svm_ep.p.lightning_ability_15_delay=1..}] as @s[scores={svm_ep.mana=250..}] run function svm_ep:power/lightning/ability15
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=3}] unless entity @s[scores={svm_ep.p.lightning_ability_14_delay=1..}] as @s[scores={svm_ep.mana=30..}] run function svm_ep:power/lightning/ability14
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=2}] unless entity @s[scores={svm_ep.p.lightning_ability_03_delay=1..}] as @s[scores={svm_ep.mana=25..}] run function svm_ep:power/lightning/ability3
#execute as @s[scores={svm_ep.holding_katana=1,svm_ep.katana_ability=1}] unless entity @s[scores={svm_ep.p.lightning_ability_02_delay=1..}] as @s[scores={svm_ep.mana=10..}] run function svm_ep:power/lightning/ability2


#execute unless entity @s[scores={svm_ep.katana_ability=1..}] run tellraw @s[scores={svm_ep.holding_katana=1}] ["",{"text":"| ","color":"gray"},{"text":"Charg","color":"red"},{"text":"e in ","color":"#FF7274"},{"text":"of","color":"#FF8D8F"},{"text":"fhand ","color":"#FFA2A3"},{"text":"to use","color":"#FF8D8F"},{"text":" abilit","color":"#FF7274"},{"text":"ies!","color":"red"}]

#execute as @s[scores={svm_ep.using_move=1..}] run scoreboard players reset @s svm_ep.katana_ability
#execute as @s[scores={svm_ep.using_move=1..}] run scoreboard players reset @s svm_ep.katana_charge_delay

#execute as @s[scores={svm_ep.holding_katana=2..}] run scoreboard players add @s svm_ep.katana_charge 2
#execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.katana_golden:1b}}}}}] run scoreboard players add @s svm_ep.katana_charge 2
#execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.katana_thunder:1b}}}}}] run scoreboard players add @s svm_ep.katana_charge 3
#execute as @s[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{svm_ep.katana_thunder_charged:1b}}}}}] run scoreboard players set @s svm_ep.katana_charge 10

#execute at @s[scores={svm_ep.holding_katana=2..}] run particle minecraft:glow ~ ~0.85 ~ 0.35 0.8 0.35 1 10
#execute as @s[scores={svm_ep.holding_katana=2..}] run scoreboard players set @s[scores={svm_ep.katana_ability=4..}] svm_ep.katana_ability 1
#execute as @s[scores={svm_ep.holding_katana=2..}] run scoreboard players add @s[scores={svm_ep.katana_charge=10..}] svm_ep.katana_ability 1
#execute as @s[scores={svm_ep.holding_katana=2..}] run scoreboard players set @s svm_ep.katana_charge_delay 90
#execute at @s[scores={svm_ep.katana_charge=10..}] run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 1.75
#execute at @s[scores={svm_ep.katana_charge=10..}] run particle minecraft:glow ~ ~0.85 ~ 0.35 0.8 0.35 1 30
#execute at @s[scores={svm_ep.katana_charge=10..}] run particle minecraft:end_rod ~ ~0.85 ~ 0 0 0 1 30

#tellraw @s[tag=svm_ep.lightning_user,scores={svm_ep.katana_charge=10..,svm_ep.katana_ability=1}] ["",{"text":"| ","color":"gray"},{"text":"Ability","color":"gold"},{"text":": ","color":"gray"},{"text":"Thunder Slash","color":"aqua"}]
#tellraw @s[tag=svm_ep.lightning_user,scores={svm_ep.katana_charge=10..,svm_ep.katana_ability=2}] ["",{"text":"| ","color":"gray"},{"text":"Ability","color":"gold"},{"text":": ","color":"gray"},{"text":"Six Slashes","color":"aqua"}]
#tellraw @s[tag=svm_ep.lightning_user,scores={svm_ep.katana_charge=10..,svm_ep.katana_ability=3}] ["",{"text":"| ","color":"gray"},{"text":"Ability","color":"gold"},{"text":": ","color":"gray"},{"text":"Thunder Dance","color":"aqua"}]
#tellraw @s[tag=svm_ep.lightning_user,scores={svm_ep.katana_charge=10..,svm_ep.katana_ability=4..}] ["",{"text":"| ","color":"gray"},{"text":"Ability","color":"gold"},{"text":": ","color":"gray"},{"text":"Light-speed Flash","color":"aqua"}]

#scoreboard players reset @s[scores={svm_ep.katana_charge=10..}] svm_ep.katana_charge