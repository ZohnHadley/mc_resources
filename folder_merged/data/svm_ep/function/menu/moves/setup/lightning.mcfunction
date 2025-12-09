data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/lightning'
data modify storage svm_ep:menu power.temp.description set value "Directly deriven from the stirred energy!"



function svm_ep:menu/moves/add_ability/main {"name":"Lightning","use_requirement":"Requires 30 mana","description":"Creates a lightning at cursor","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Electric String","use_requirement":"Requires 20 mana, charging drains","description":"Shoots a chargeable electric string in front","id_number":"7","unlock_id":"20004","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Charge-up","use_requirement":"Requires 25 mana, charging drains","description":"Infuses you with electrical impulses giving you massive advantages","id_number":"16","unlock_id":"20045","unlock_requirement":"Click to unlock for 20 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Electric Zone","use_requirement":"Requires 10 mana, holding drains","description":"Damages and slows mobs and projectiles around","id_number":"17","unlock_id":"20046","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Place Lightning","use_requirement":"Requires 10 mana","description":"Creates a lightning location at cursor","id_number":"5","unlock_id":"20005","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Summon Lightnings","use_requirement":"Resets Lightning Place ability","description":"Summons lightnings at locations from Place Lightning ability","id_number":"6","unlock_id":"20005","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Blast","use_requirement":"Requires 325 mana","description":"Shoots a massive blast dealing extreme damage to mobs and environment in-front","id_number":"13","unlock_id":"20006","unlock_requirement":"Click to unlock for 70 Ability Points"}

#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Thunder Walk","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Speeds you up at each use","color":"gold"},{"text":" - ","color":"gray"},{"text":"Unlocks at level 10, requires 5 mana","color":"gold"}]
#tellraw @s [{"text":"|","color":"gray"}]
#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Thunder Slash","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Dashes forward dealing damage","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires katana and 10 mana","color":"gold"}]
#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Six Slashes","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Repeats [Thunder Slash] six times","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires katana and 25 mana","color":"gold"}]
#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Thunder Dance","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Speeds you up while dealing damage, time is increased by jumping","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires katana and 30 mana","color":"gold"}]
#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Light-speed Flash","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Dashes in-front with extreme speed dealing massive damage","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires katana and 250 mana","color":"gold"}]





data modify storage svm_ep:menu power.temp.abilities append value {type:"minecraft:multi_action",can_close_with_escape:1,actions:[{action:{type:"minecraft:run_command",command:"trigger svm_ep.menu set 4"},label:{color:"#db0000",text:"Power Menu"}}],pause:0,title:{color:"#a8fff5",text:"Lightning Passives",bold:1},body:[{type:"minecraft:item",description:[{color:"#fef69a",text:"Thundering Power"},{color:"#9c9c9c",text:" - "},{color:"#d4d4d4",text:"In thunder, decreases cooldowns, regenerates mana faster"}],show_tooltip:0,show_decorations:0,item:{id:"minecraft:blaze_powder"}},{type:"minecraft:item",description:[{color:"#fef69a",text:"Submerged"},{color:"#9c9c9c",text:" - "},{color:"#d4d4d4",text:"In water, drains mana"}],show_tooltip:0,show_decorations:0,item:{id:"minecraft:water_bucket"}}],after_action:"none"}
