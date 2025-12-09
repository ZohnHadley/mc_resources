data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/time'
data modify storage svm_ep:menu power.temp.description set value "Power that directly let's you manipulate the timeline, who would need anything more?"

function svm_ep:menu/moves/add_ability/main {"name":"Time Stop","use_requirement":"Requires 25 mana, charging drains","description":"Stops time around","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Accelerate","use_requirement":"Requires 45 mana","description":"Speeds up users actions","id_number":"2","unlock_id":"20059","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Time Skip","use_requirement":"Requires 25 mana","description":"Skips a few seconds ahead, charging mana, cooldowns etc.","id_number":"3","unlock_id":"20060","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Timestamp","use_requirement":"Requires 50 mana","description":"Marks your location, teleports you back on second use, holding resets your location","id_number":"4","unlock_id":"20061","unlock_requirement":"Click to unlock for 25 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Rewind","use_requirement":"Requires 250 mana","description":"Teleports mobs around back to their location from some time ago","id_number":"5","unlock_id":"20062","unlock_requirement":"Click to unlock for 50 Ability Points"}
