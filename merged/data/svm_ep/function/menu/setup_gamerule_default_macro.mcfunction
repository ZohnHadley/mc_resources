$execute unless score $(gamerule) svm_ep.gamerule = $(gamerule) svm_ep.gamerule run scoreboard players set $(gamerule) svm_ep.gamerule $(value)



#tellraw @s ["",{"text":"doLoseMana: ","click_event":{"action":"suggest_command","command":"/scoreboard players set doLoseMana svm_ep.gamerule "}},{"score":{"name":"doLoseMana","objective":"svm_ep.gamerule"},"click_event":{"action":"suggest_command","command":"/scoreboard players set doLoseMana svm_ep.gamerule "}}]