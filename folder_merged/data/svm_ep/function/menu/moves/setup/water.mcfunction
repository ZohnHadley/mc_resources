data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/water'
data modify storage svm_ep:menu power.temp.description set value "Is shapeless a shape?"

function svm_ep:menu/moves/add_ability/main {"name":"Water Creation","use_requirement":"Requires 5 mana","description":"Creates water at cursor","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Collect","use_requirement":"Requires 1 mana","description":"Collects nearby waters","id_number":"2","unlock_id":"20077","unlock_requirement":"Unlocked for 5 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Flowing Movement","use_requirement":"Requires 0 mana","description":"Toggles increased water speed (also allows for jumps in water!)","id_number":"3","unlock_id":"20078","unlock_requirement":"Unlocked for 8 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Manipulation","use_requirement":"Requires 1 mana","description":"Lets you create whirlpools, control water, droplets and gives additional support in water (holding/tapping MAY change the behavior of this ability)","id_number":"4","unlock_id":"20079","unlock_requirement":"Unlocked for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Water Droplet","use_requirement":"Requires 10 mana, holding drains","description":"Creates a small water droplet","id_number":"5","unlock_id":"20080","unlock_requirement":"Unlocked for 5 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Rising Water","use_requirement":"Requires 20 mana","description":"Multiplies nearby waters","id_number":"6","unlock_id":"20081","unlock_requirement":"Unlocked for 75 Ability Points"}
