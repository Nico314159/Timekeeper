scoreboard players operation $average timekeeper.var /= $length timekeeper.var
execute if score $average timekeeper.var matches 51.. run data modify storage timekeeper:storage text set value "{\"score\":{\"name\":\"$average\",\"objective\":\"timekeeper.var\"},\"bold\":true,\"color\":\"red\"}"
execute if score $average timekeeper.var matches 25..50 run data modify storage timekeeper:storage text set value "{\"score\":{\"name\":\"$average\",\"objective\":\"timekeeper.var\"},\"bold\":true,\"color\":\"yellow\"}"
execute if score $average timekeeper.var matches ..24 run data modify storage timekeeper:storage text set value "{\"score\":{\"name\":\"$average\",\"objective\":\"timekeeper.var\"},\"bold\":true,\"color\":\"green\"}"
tellraw @a ["",{"text":"[Timekeeper] ","bold":true},{"text":"Average MSPT over ","color":"aqua"},{"score":{"name":"$length","objective":"timekeeper.var"},"color":"aqua"},{"text":" ticks:","color":"aqua"},{"text":" ","color":"reset"},{"color":"reset","nbt":"text","interpret":"true","storage":"timekeeper:storage"}]
bossbar set timekeeper:mspt visible false
scoreboard players reset $length