



execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/flora/ability/ui/01 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=2}] run return run function svm_ep:power/flora/ability/ui/02
execute as @s[scores={svm_ep.selected_ability=3}] run return run function svm_ep:power/flora/ability/ui/03
execute as @s[scores={svm_ep.selected_ability=4}] run return run function svm_ep:power/flora/ability/ui/04 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=5}] run function svm_ep:power/flora/ability/ui/05
execute as @s[scores={svm_ep.selected_ability=6},advancements={svm_ep:unlocked_ability/flora/6=true}] run return run function svm_ep:power/flora/ability/ui/06 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=7},advancements={svm_ep:unlocked_ability/flora/7=true}] run return run function svm_ep:power/flora/ability/ui/07 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=8},advancements={svm_ep:unlocked_ability/flora/8=true}] run return run function svm_ep:power/flora/ability/ui/08 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=9},advancements={svm_ep:unlocked_ability/flora/9=true}] run return run function svm_ep:power/flora/ability/ui/09 with storage svm_ep:mana_display input
#execute as @s[scores={svm_ep.selected_ability=10}] run return run function svm_ep:power/flora/ability/ui/10 with storage svm_ep:mana_display input




#CLIMATE  ABILITIES
execute as @s[scores={svm_ep.selected_ability=16}] run return run function svm_ep:power/flora/ability/ui/16 with storage svm_ep:mana_display input


execute as @s[scores={svm_ep.selected_ability=17},advancements={svm_ep:flora_visited_biome/forest=true}] run return run function svm_ep:power/flora/ability/ui/17 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=18},advancements={svm_ep:flora_visited_biome/taiga=true}] run return run function svm_ep:power/flora/ability/ui/18 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=19},advancements={svm_ep:flora_visited_biome/jungle=true}] run return run function svm_ep:power/flora/ability/ui/19 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=20},advancements={svm_ep:flora_visited_biome/desert=true}] run return run function svm_ep:power/flora/ability/ui/20 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=21},advancements={svm_ep:flora_visited_biome/mushroom=true}] run return run function svm_ep:power/flora/ability/ui/21 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=22},advancements={svm_ep:flora_visited_biome/warped=true}] run return run function svm_ep:power/flora/ability/ui/22 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=23},advancements={svm_ep:flora_visited_biome/crimson=true}] run return run function svm_ep:power/flora/ability/ui/23 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=24},advancements={svm_ep:flora_visited_biome/plains=true}] run return run function svm_ep:power/flora/ability/ui/24 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=25},advancements={svm_ep:flora_visited_biome/ocean=true}] run return run function svm_ep:power/flora/ability/ui/25 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=26},advancements={svm_ep:flora_visited_biome/dark_oak=true}] run return run function svm_ep:power/flora/ability/ui/26 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=27},advancements={svm_ep:flora_visited_biome/savanna=true}] run return run function svm_ep:power/flora/ability/ui/27 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=28},advancements={svm_ep:flora_visited_biome/cherry=true}] run return run function svm_ep:power/flora/ability/ui/28 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=29},advancements={svm_ep:flora_visited_biome/mangrove=true}] run return run function svm_ep:power/flora/ability/ui/29 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=30},advancements={svm_ep:flora_visited_biome/moss=true}] run return run function svm_ep:power/flora/ability/ui/30 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=31},advancements={svm_ep:flora_visited_biome/birch=true}] run return run function svm_ep:power/flora/ability/ui/31 with storage svm_ep:mana_display input
execute as @s[scores={svm_ep.selected_ability=32},advancements={svm_ep:flora_visited_biome/pale=true}] run return run function svm_ep:power/flora/ability/ui/32 with storage svm_ep:mana_display input



#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..},tag=!svm_ep.flora_swing] actionbar [$(mana_display),{"text":" V","color":"#A3FF74"},{"text":"i","color":"#D1FF7F"},{"text":"n","color":"#D7FF80"},{"text":"e","color":"#D1FF7F"},{"text":" |","color":"gray"}]
#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..},tag=svm_ep.flora_swing] actionbar [$(mana_display),{"text":" S","color":"#A3FF74"},{"text":"w","color":"#B9F86A"},{"text":"in","color":"#A8F160"},{"text":"g","color":"#B9F86A"},{"text":" |","color":"gray"}]
#title @s[nbt={SelectedItemSlot:1},scores={svm_ep.level=10..,svm_ep.p.flora_ability_02_delay=1..},tag=!svm_ep.flora_swing] actionbar [$(mana_display),{"text":" ","strikethrough":true,"color":"#7D8578"},{"text":"V","strikethrough":true,"color":"#989898"},{"text":"i","strikethrough":true,"color":"#B1B1B1"},{"text":"n","strikethrough":true,"color":"#989898"},{"text":"e ","strikethrough":true,"color":"#7D8578"},{"text":"|","color":"gray"}]


#[$(mana_display)
