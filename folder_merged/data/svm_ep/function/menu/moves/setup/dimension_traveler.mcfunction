data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/dimension_traveler'
data modify storage svm_ep:menu power.temp.description set value "Very handy for those who just want to explore, free travel!"

function svm_ep:menu/moves/add_ability/main {"name":"Dimension Selection","use_requirement":"Requires 0 mana","description":"Selects a dimension","id_number":"3","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Portal","use_requirement":"Requires 20 mana","description":"Summons a portal which travels mobs and impacts in-front","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Dimensional Gate","use_requirement":"Requires 50 mana","description":"Summons a portal to another dimension","id_number":"2","unlock_id":"20032","unlock_requirement":"Unlocked for 20 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Front-Gates","use_requirement":"Requires 30 mana","description":"Summons a portal which travels mobs to another portal","id_number":"4","unlock_id":"20034","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Dimension Hop","use_requirement":"Requires 100 mana","description":"After a chargeup, teleports you and mobs in-range to the pocket dimension, returning doesn't require mana","id_number":"5","unlock_id":"20035","unlock_requirement":"Click to unlock for 15 Ability Points"}
