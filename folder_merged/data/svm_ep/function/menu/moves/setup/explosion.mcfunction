data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/explosion'
data modify storage svm_ep:menu power.temp.description set value "Made for destruction, may god forbid the spam technique 🙏"

function svm_ep:menu/moves/add_ability/main {"name":"Explosion","use_requirement":"Requires 10 mana, charging drains","description":"Summons an explosion in-front","id_number":"1","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Explosive Bullet","use_requirement":"Requires 10 mana, charging drains","description":"Shoots a chargeable projectile that explodes on impact","id_number":"2","unlock_id":"20016","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Explosive Dash","use_requirement":"Requires 5 mana, charging drains","description":"Dashes you in-front","id_number":"5","unlock_id":"20017","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Smoke Barrier","use_requirement":"Requires 1 mana, holding drains","description":"Spreads smoke around to slow down and blind mobs","id_number":"3","unlock_id":"20019","unlock_requirement":"Click to unlock for 5 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Explosive Train","use_requirement":"Requires 15 mana, drains","description":"Creates explosion behind you launching you in-front, lenght is dependent on your level, if you run out of mana it stops","id_number":"6","unlock_id":"20020","unlock_requirement":"Click to unlock for 40 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Re-Explode","use_requirement":"Requires 50 mana, drains","description":"Sacrifices a ton of health in exchange for a great explosion","id_number":"7","unlock_id":"20076","unlock_requirement":"Unlock from Paradise Traders"}



#tellraw @s [{"text":"| ","color":"gray"},{"text":"Explosion Launch ","color":"yellow","hover_event":{"action":"show_text","value":"Launches you forward, shifting for longer launches you further and faster"}},{"text":"- Requires 15 mana","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 4"},"hover_event":{"action":"show_text","value":"Click to bind to selected slot"}},{"text":" [Unlock]","color":"#8fffef","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 20018"},"hover_event":{"action":"show_text","value":"Click to unlock for 10 Ability Points"}}]
#tellraw @s [{"text":"|","color":"gray"}]

#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Earth Destroyer","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Places a location on cursor, after 6 seconds it explodes","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires Explosion Wand and 10 mana","color":"gold"}]
#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Explosion Charge","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Increases the size of the Earth Destroyer by each use after placing the location","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires Explosion Wand and 2 mana","color":"gold"}]
#tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Cancel Explosion","color":"aqua"},{"text":"] - ","color":"gray"},{"text":"Stops the Earth Destroyer ability","color":"gold"},{"text":" - ","color":"gray"},{"text":"Requires Explosion Wand in offhand","color":"gold"}]
