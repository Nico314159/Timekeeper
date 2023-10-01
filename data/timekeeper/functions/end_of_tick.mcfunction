advancement revoke @s only timekeeper:end_of_tick
execute if score $enabled timekeeper.var matches 0 run return 0
execute if score $given timekeeper.var matches 1.. run return 0
scoreboard players set $given timekeeper.var 1
execute store result score $mspt timekeeper.var run worldborder get
scoreboard players remove $mspt timekeeper.var 59000000
execute store result bossbar timekeeper:mspt value run scoreboard players get $mspt timekeeper.var
execute if score $mspt timekeeper.var matches 51.. run bossbar set timekeeper:mspt color red
execute if score $mspt timekeeper.var matches 25..50 run bossbar set timekeeper:mspt color yellow
execute if score $mspt timekeeper.var matches ..24 run bossbar set timekeeper:mspt color green
bossbar set timekeeper:mspt name [{"text":"MSPT: "},{"score":{"name":"$mspt","objective":"timekeeper.var"}}]
scoreboard players operation $average timekeeper.var += $mspt timekeeper.var
scoreboard players add $length timekeeper.var 1
execute if score $enabled timekeeper.var matches 1.. run scoreboard players remove $enabled timekeeper.var 1
execute if score $enabled timekeeper.var matches 0 run function timekeeper:__private__/if_else/0