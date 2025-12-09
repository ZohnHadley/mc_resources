#tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"Why my move doesn't work?","color":"white"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"A","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"You cannot use moves if: You don't have enough mana/Ability is on delay/You are using different move","color":"white"},{"text":"\n"},{"text":"| \n| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" -","color":"gray"},{"text":" How to get more mana?","color":"white"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"A","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"Consume ","color":"white"},{"text":"G","bold":true,"color":"gold"},{"text":"ol","bold":true,"color":"#FFBE32"},{"text":"den E","bold":true,"color":"#FFD555"},{"text":"ye","bold":true,"color":"#FFBE32"},{"text":"s","bold":true,"color":"gold"},{"text":" dropped from spiders and cave spiders","color":"white"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to get powers?","color":"white"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"A","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"Different powers have different obtainments, but most of them are easily obtainable by eating ","color":"white"},{"text":"G","bold":true,"color":"gold"},{"text":"ol","bold":true,"color":"#FFB71E"},{"text":"den Fl","bold":true,"color":"#FFCE49"},{"text":"es","bold":true,"color":"#FFB71E"},{"text":"h","bold":true,"color":"gold"},{"text":" dropped from zombies and mobs like them, you can also craft scrolls, more info on items menu"}]

#tellraw @s [{"text":"|","color":"gray"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How do I use my moves?","color":"white"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"A","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"Select a slot of the ability, when it's unlocked and you have enough mana, you can shift to unleash the move","color":"white"}]

#tellraw @s ["",{"text":"|\n| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to reset my power?","color":"white"},{"text":"\n"},{"text":"| ","color":"gray"},{"text":"A","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"Get a [Power Reseter], crafting is on items page in menu","color":"white"}]




$dialog show @s {type:"minecraft:multi_action",title:$(title),body:[{type:"minecraft:plain_message",contents:{text:"Hover on questions to get the answer!",color:"#c4c4c4"}},{type:"minecraft:item",item:{id:"minecraft:gold_ingot",components:{"minecraft:item_model":"svm_ep:golden/flesh"}},description:{text:"How to get Powers?",bold:1,hover_event:{action:"show_text",value:{text:"Eat Golden Flesh (dropped by zombies, ones with powers have greater chances of dropping it), you can al so craft power scrolls (recipes on Items Menu)"}}},show_decorations:0,show_tooltip:0},{type:"minecraft:item",item:{id:"minecraft:flower_banner_pattern"},description:{text:"How to unlock abilities?",bold:1,hover_event:{action:"show_text",value:{text:"Open Menu -> Powers Info and choose the power you want to unlock the abilities for, then click [Unlock] to unlock your deserved ability"}}},show_decorations:0,show_tooltip:0},{type:"minecraft:item",item:{id:"minecraft:experience_bottle"},description:{text:"How to get ability points?",bold:1,hover_event:{action:"show_text",value:{text:"Complete SVM Powers advancements and you can eat Golden Flesh as a power user"}}},show_decorations:0,show_tooltip:0},{type:"minecraft:item",item:{id:"minecraft:spider_eye",components:{"minecraft:item_model":"svm_ep:golden/eye"}},description:{text:"How to get more mana?",bold:1,hover_event:{action:"show_text",value:{text:"Eat Golden Eyes dropped by Spiders and Cave Spiders"}}},show_decorations:0,show_tooltip:0},{type:"minecraft:item",item:{id:"minecraft:flower_banner_pattern",components:{"minecraft:item_model":"svm_ep:power_reseter"}},description:{text:"How to change a power?",bold:1,hover_event:{action:"show_text",value:{text:"Craft a Power Reseter and put it in your offhand (recipe in Items Menu), then you can obtain a different power"}}},show_decorations:0,show_tooltip:0}],can_close_with_escape:1,after_action:"wait_for_response",actions:[{label:{text:"Main Menu",color:"#db0000"},width:70,action:{type:"minecraft:run_command",command:"trigger svm_ep.menu set 1"}}]}





return 0

tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Hover on questions to get the answer","bold":true,"color":"white"},{"text":"!","color":"gray"}]
tellraw @s ["",{"text":"| ","color":"gray"}]



tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to get powers?","hover_event":{"action":"show_text","value":"Eat Golden Flesh (dropped by zombies, ones with powers have greater chances of dropping it), you can also craft power scrolls (recipes on Items Menu)"}}]
tellraw @s ["",{"text":"| ","color":"gray"}]
tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to unlock abilities?","hover_event":{"action":"show_text","value":"Open Menu -> Powers Info and choose the power you want to unlock the abilities for, then click [Unlock] to unlock your deserved ability"}}]
tellraw @s ["",{"text":"| ","color":"gray"}]
tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to get ability points?","hover_event":{"action":"show_text","value":"Complete SVM Powers advancements and you can eat Golden Flesh if you have a power"}}]
tellraw @s ["",{"text":"| ","color":"gray"}]
tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to get more mana?","hover_event":{"action":"show_text","value":"Eat Golden Eyes dropped by Spiders and Cave Spiders"}}]
tellraw @s ["",{"text":"| ","color":"gray"}]
tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to change a power?","hover_event":{"action":"show_text","value":"Craft a Power Rester and put it in your offhand (recipe in Items Menu)"}}]


#tellraw @s ["",{"text":"| ","color":"gray"}]
#tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Q","bold":true,"color":"aqua"},{"text":" - ","color":"gray"},{"text":"How to change a power?","hover_event":{"action":"show_text","value":"Craft a Power Rester and put it in your offhand (recipe in Items Menu)"}}]


tellraw @s ["",{"text":"| ","color":"gray"}]
tellraw @s ["",{"text":"| ","color":"gray"},{"text":"Hover on questions to get the answer","bold":true,"color":"white"},{"text":"!","color":"gray"}]
tellraw @s [{"text":"|\n| ","color":"gray"},{"text":"Have more questions? Join discord to ask them :)"}]


