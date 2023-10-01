scoreboard objectives add timekeeper.var dummy
bossbar add timekeeper:mspt ["",{"text":"MSPT: "},{"score":{"name":"$mspt","objective":"timekeeper.var"}}]
bossbar set timekeeper:mspt players @a
bossbar set timekeeper:mspt max 100c
return 1