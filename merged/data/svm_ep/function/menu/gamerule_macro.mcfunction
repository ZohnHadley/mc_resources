$tellraw @s ["",{"text":"$(gamerule): ","hover_event":{"action":"show_text","value":"$(gamerule) - $(info)"},"click_event":{"action":"suggest_command","command":"/scoreboard players set $(gamerule) svm_ep.gamerule "}},{"score":{"name":"$(gamerule)","objective":"svm_ep.gamerule"},"click_event":{"action":"suggest_command","command":"/scoreboard players set $(gamerule) svm_ep.gamerule "}}]



#tellraw @s ["",{"text":"doLoseMana: ","click_event":{"action":"suggest_command","command":"/scoreboard players set doLoseMana svm_ep.gamerule "}},{"score":{"name":"doLoseMana","objective":"svm_ep.gamerule"},"click_event":{"action":"suggest_command","command":"/scoreboard players set doLoseMana svm_ep.gamerule "}}]