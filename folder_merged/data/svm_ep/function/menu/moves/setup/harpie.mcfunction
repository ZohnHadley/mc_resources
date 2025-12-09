data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/harpie'
data modify storage svm_ep:menu power.temp.description set value "Even an eagle is helpless at the beginning"

function svm_ep:menu/moves/add_ability/main {"name":"Wings","use_requirement":"Slows mana regeneration","description":"Equips or unequips you with wings","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Razor Feather","use_requirement":"Requires 5 mana","description":"Shoots a feather from your wings","id_number":"2","unlock_id":"20030","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Ultra Jump","use_requirement":"Requires 25 mana","description":"Strongly launches you upwards","id_number":"3","unlock_id":"20031","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Feather Lift","use_requirement":"Requires 60 mana","description":"Launches mobs closeby upwards","id_number":"4","unlock_id":"20055","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Grab","use_requirement":"Requires 60 mana, drains","description":"Grabs a mob in-front for a few seconds","id_number":"5","unlock_id":"20056","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Feather Manipulation","use_requirement":"Requires 5 mana, drains","description":"Launches existing Razor Feather to the cursor location","id_number":"6","unlock_id":"20074","unlock_requirement":"Click to unlock for 15 Ability Points"}



#OLD tellraw @s [{"text":"| ","color":"gray"},{"text":"Grab ","color":"yellow","hover_event":{"action":"show_text","value":"Grabs a mob in-front for a few seconds"}},{"text":"- Requires 60 mana","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 5"},"hover_event":{"action":"show_text","value":"Click to bind to selected slot"}},{"text":" [Unlock]","color":"#8fffef","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 20056"},"hover_event":{"action":"show_text","value":"Click to unlock for 10 Ability Points"}}]
#NEW function svm_ep:menu/moves/add_ability/main {"name":"Grab","use_requirement":"Requires 60 mana, drains","description":"Grabs a mob in-front for a few seconds","id_number":"5","unlock_id":"20056","unlock_requirement":"Click to unlock for 10 Ability Points"}
