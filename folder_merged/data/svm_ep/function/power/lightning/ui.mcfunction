execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/lightning/ability/ui/1 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=7},advancements={svm_ep:unlocked_ability/lightning/2=true}] run return run function svm_ep:power/lightning/ability/ui/7 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=5},advancements={svm_ep:unlocked_ability/lightning/3=true}] run return run function svm_ep:power/lightning/ability/ui/5 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=6},advancements={svm_ep:unlocked_ability/lightning/3=true}] run return run function svm_ep:power/lightning/ability/ui/6 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=13},advancements={svm_ep:unlocked_ability/lightning/4=true}] run return run function svm_ep:power/lightning/ability/ui/13 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=16},advancements={svm_ep:unlocked_ability/lightning/6=true}] run return run function svm_ep:power/lightning/ability/ui/16 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=17},advancements={svm_ep:unlocked_ability/lightning/7=true}] run return run function svm_ep:power/lightning/ability/ui/17 with storage svm_ep:mana_display input


#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..}] actionbar [$(mana_display),{"text":" | ","color":"#858585"},{"text":" T","color":"yellow"},{"text":"h","color":"#C6F84C"},{"text":"u","color":"#74FFBD"},{"text":"nder W","color":"#9BFFF7"},{"text":"a","color":"#74FFBD"},{"text":"l","color":"#C6F84C"},{"text":"k","color":"yellow"},{"text":" |","color":"gray"}]
#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..,svm_ep.p.lightning_ability_04_delay=1..}] actionbar [$(mana_display),{"text":" | ","color":"#858585"},{"text":" ","strikethrough":true,"color":"yellow"},{"text":"T","strikethrough":true,"color":"#7A7A4E"},{"text":"h","strikethrough":true,"color":"#859B72"},{"text":"u","strikethrough":true,"color":"#A8BA95"},{"text":"nder","strikethrough":true,"color":"#D4DBC7"},{"text":" W","strikethrough":true,"color":"#A8BA95"},{"text":"al","strikethrough":true,"color":"#859B72"},{"text":"k","strikethrough":true,"color":"#7A7A4E"},{"text":" ","strikethrough":true,"color":"yellow"},{"text":"|","color":"gray"}]





#title @s[nbt={SelectedItemSlot:7},scores={svm_ep.p.moveset=1}] actionbar [$(mana_display),{"text":" M","color":"gray"},{"text":"o","color":"#B3B3B3"},{"text":"v","color":"#BFBFBF"},{"text":"e","color":"#C7C7C7"},{"text":"s","color":"#BFBFBF"},{"text":"e","color":"#B3B3B3"},{"text":"t:","color":"gray"},{"text":" L","color":"aqua"},{"text":"i","color":"#6FFFFF"},{"text":"g","color":"#88FFFF"},{"text":"h","color":"#9BFFFF"},{"text":"t","color":"#AFFFFF"},{"text":"n","color":"#C4FFFF"},{"text":"i","color":"#AFFFFF"},{"text":"n","color":"#9BFFFF"},{"text":"g","color":"#88FFFF"},{"text":" 1 ","color":"aqua"},{"text":"|","color":"gray"}]


#title @s[nbt={SelectedItemSlot:X},scores={svm_ep.level=Y..}] actionbar [$(mana_display)]
