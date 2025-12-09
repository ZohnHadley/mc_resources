data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/death'
data modify storage svm_ep:menu power.temp.description set value "It's been too lively recently..."


# Summon Scythe
function svm_ep:menu/moves/add_ability/main {"name":"Summon Scythe","use_requirement":"Requires 25 mana, charging drains","description":"Gives you a powerful scythe","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}

# Life Drain
function svm_ep:menu/moves/add_ability/main {"name":"Life Drain","use_requirement":"Requires 40 mana","description":"Drains health from mobs nearby giving you regeneration","id_number":"2","unlock_id":"20069","unlock_requirement":"Click to unlock for 5 Ability Points"}

# Cleaving Cut
function svm_ep:menu/moves/add_ability/main {"name":"Cleaving Cut","use_requirement":"Requires 60 mana","description":"Heavily damages mobs closeby, charging increases damage","id_number":"3","unlock_id":"20070","unlock_requirement":"Click to unlock for 10 Ability Points"}

# Memento Mori
function svm_ep:menu/moves/add_ability/main {"name":"Memento Mori","use_requirement":"Requires 100 mana","description":"Starts a haunt at a mob at cursor, haunted mob will give you damage boost but you can't attack other mobs around","id_number":"4","unlock_id":"20071","unlock_requirement":"Click to unlock for 20 Ability Points"}

# Unsealed Reaper
function svm_ep:menu/moves/add_ability/main {"name":"Unsealed Reaper","use_requirement":"Requires 250 mana","description":"Enters a powerful state in which you are faster, stronger and your abilities are enhanced","id_number":"5","unlock_id":"20072","unlock_requirement":"Click to unlock for 80 Ability Points"}

# Death Compass
function svm_ep:menu/moves/add_ability/main {"name":"Death Compass","use_requirement":"Requires 0 mana","description":"Creates an arrow that leads you to the closest mob","id_number":"6","unlock_id":"20073","unlock_requirement":"Click to unlock for 25 Ability Points"}
