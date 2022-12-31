schedule clear knockout_jd:calculation/compare
bossbar remove time
playsound minecraft:block.note_block.bell music @a
title @a title [{"text": "得分：","bold":true,"color": "gold"},{"score":{"objective":"SCORE","name":"@r[tag=single_player]"},"bold":true,"color": "dark_aqua"}]
title @a subtitle [{"text": "挑战结束","color": "gold"}]
execute as @a at @a run summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_star",Count:1,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:4,Colors:[I;16755968],FadeColors:[I;16735744]}]}}}}
tellraw @a [{"text": "=================== 游戏结束 ==================","bold": true,"color": "yellow"}]
tellraw @a [{"text": "挑战结束，得分：","bold":true,"color": "dark_aqua"},{"score":{"objective":"SCORE","name":"@r[tag=single_player]"},"bold":true,"color": "dark_aqua"}]
tellraw @a {"text":"---------------------------------------------------","color": "yellow"}
tellraw @a [{"text": "▶【 重置数据包 】","clickEvent": {"action":"run_command","value":"/function knockout_jd:root/reload"},"bold": true,"color": "yellow"}]
tellraw @a [{"text": "==============================================","bold": true,"color": "yellow"}]
scoreboard objectives remove r
tag @a remove single_player