#execute as @s[scores={svm_ep.level=10..,svm_ep.mana=5..},nbt={SelectedItemSlot:1},tag=swing] unless entity @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.p.flora_ability_02_delay=1..}] run function svm_ep:power/flora/swing/throw
#execute as @s[scores={svm_ep.level=10..,svm_ep.mana=5..},nbt={SelectedItemSlot:1},tag=!swing] unless entity @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.p.flora_ability_02_delay=1..}] run function svm_ep:power/flora/swing/shoot


execute as @s[scores={svm_ep.selected_ability=1}] run return run function svm_ep:power/flora/ability/use/01
execute as @s[scores={svm_ep.selected_ability=2}] run return run function svm_ep:power/flora/ability/use/02
execute as @s[scores={svm_ep.selected_ability=3}] run return run function svm_ep:power/flora/ability/use/03
execute as @s[scores={svm_ep.selected_ability=4}] run return run function svm_ep:power/flora/ability/use/04
#execute as @s[scores={svm_ep.selected_ability=5}] run return run function svm_ep:power/flora/ability/use/05
execute as @s[scores={svm_ep.selected_ability=6}] run return run function svm_ep:power/flora/ability/use/06
execute as @s[scores={svm_ep.selected_ability=7}] run return run function svm_ep:power/flora/ability/use/07
execute as @s[scores={svm_ep.selected_ability=8}] run return run function svm_ep:power/flora/ability/use/08
execute as @s[scores={svm_ep.selected_ability=9}] run return run function svm_ep:power/flora/ability/use/09
execute as @s[scores={svm_ep.selected_ability=10}] run return run function svm_ep:power/flora/ability/use/10



#execute as @s[scores={svm_ep.selected_ability=15}] run return run function svm_ep:power/flora/ability/use/15
execute as @s[scores={svm_ep.selected_ability=16}] run return run function svm_ep:power/flora/ability/use/16
execute as @s[scores={svm_ep.selected_ability=17}] run return run function svm_ep:power/flora/ability/use/17
execute as @s[scores={svm_ep.selected_ability=18}] run return run function svm_ep:power/flora/ability/use/18
execute as @s[scores={svm_ep.selected_ability=19}] run return run function svm_ep:power/flora/ability/use/19
execute as @s[scores={svm_ep.selected_ability=20}] run return run function svm_ep:power/flora/ability/use/20
execute as @s[scores={svm_ep.selected_ability=21}] run return run function svm_ep:power/flora/ability/use/21
execute as @s[scores={svm_ep.selected_ability=22}] run return run function svm_ep:power/flora/ability/use/22
execute as @s[scores={svm_ep.selected_ability=23}] run return run function svm_ep:power/flora/ability/use/23
execute as @s[scores={svm_ep.selected_ability=24}] run return run function svm_ep:power/flora/ability/use/24
execute as @s[scores={svm_ep.selected_ability=25}] run return run function svm_ep:power/flora/ability/use/25
execute as @s[scores={svm_ep.selected_ability=26}] run return run function svm_ep:power/flora/ability/use/26
execute as @s[scores={svm_ep.selected_ability=27}] run return run function svm_ep:power/flora/ability/use/27
execute as @s[scores={svm_ep.selected_ability=28}] run return run function svm_ep:power/flora/ability/use/28
execute as @s[scores={svm_ep.selected_ability=29}] run return run function svm_ep:power/flora/ability/use/29
execute as @s[scores={svm_ep.selected_ability=30}] run return run function svm_ep:power/flora/ability/use/30
execute as @s[scores={svm_ep.selected_ability=31}] run return run function svm_ep:power/flora/ability/use/31
execute as @s[scores={svm_ep.selected_ability=32}] run return run function svm_ep:power/flora/ability/use/32





return 0

execute as @s[scores={svm_ep.selected_ability=16,svm_ep.p.flora_inescapable_garden_castor=1..}] run function svm_ep:power/flora/ability/use/16_special
execute as @s[scores={svm_ep.selected_ability=16,svm_ep.mana=50..}] unless entity @s[scores={svm_ep.p.flora_ability_16_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/16
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/forest=false}] as @s[scores={svm_ep.selected_ability=17,svm_ep.mana=40..}] unless entity @s[scores={svm_ep.p.flora_ability_17_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/17
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/taiga=false}] as @s[scores={svm_ep.selected_ability=18,svm_ep.mana=20..}] unless entity @s[scores={svm_ep.p.flora_ability_18_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/18
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/jungle=false}] as @s[scores={svm_ep.selected_ability=19,svm_ep.mana=30..}] unless entity @s[scores={svm_ep.p.flora_ability_19_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/19
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/desert=false}] as @s[scores={svm_ep.selected_ability=20,svm_ep.mana=35..}] unless entity @s[scores={svm_ep.p.flora_ability_20_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/20
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/mushroom=false}] as @s[scores={svm_ep.selected_ability=21,svm_ep.mana=60..}] unless entity @s[scores={svm_ep.p.flora_ability_21_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/21
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/warped=false}] as @s[scores={svm_ep.selected_ability=22,svm_ep.mana=50..}] unless entity @s[scores={svm_ep.p.flora_ability_22_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/22
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/crimson=false}] as @s[scores={svm_ep.selected_ability=23,svm_ep.mana=40..}] unless entity @s[scores={svm_ep.p.flora_ability_23_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/23
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/plains=false}] as @s[scores={svm_ep.selected_ability=24,svm_ep.mana=20..}] unless entity @s[scores={svm_ep.p.flora_ability_24_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/24
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/ocean=false}] as @s[scores={svm_ep.selected_ability=25,svm_ep.mana=3..}] unless entity @s[scores={svm_ep.p.flora_ability_25_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/25
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/dark_oak=false}] as @s[scores={svm_ep.selected_ability=26,svm_ep.mana=75..}] unless entity @s[scores={svm_ep.p.flora_ability_26_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/26
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/savanna=false}] as @s[scores={svm_ep.selected_ability=27,svm_ep.mana=50..}] unless entity @s[scores={svm_ep.p.flora_ability_27_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/27
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/cherry=false}] as @s[scores={svm_ep.selected_ability=28,svm_ep.mana=80..}] unless entity @s[scores={svm_ep.p.flora_ability_28_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/28
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/mangrove=false}] as @s[scores={svm_ep.selected_ability=29,svm_ep.mana=50..}] unless entity @s[scores={svm_ep.p.flora_ability_29_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/29
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/moss=false}] as @s[scores={svm_ep.selected_ability=30,svm_ep.mana=25..}] unless entity @s[scores={svm_ep.p.flora_ability_30_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/30
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/birch=false}] as @s[scores={svm_ep.selected_ability=31,svm_ep.mana=30..}] unless entity @s[scores={svm_ep.p.flora_ability_31_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/31
execute unless entity @s[type=player,advancements={svm_ep:flora_visited_biome/pale=false}] as @s[scores={svm_ep.selected_ability=32,svm_ep.mana=250..}] unless entity @s[scores={svm_ep.p.flora_ability_32_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/32



#NPC
#execute as @s[type=!player] as @s[scores={svm_ep.selected_ability=6}] unless entity @s[scores={svm_ep.p.flora_ability_06_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/ability/use/6
