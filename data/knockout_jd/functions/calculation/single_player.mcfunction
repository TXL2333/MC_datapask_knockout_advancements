schedule clear knockout_jd:calculation/compare
playsound minecraft:block.note_block.bell music @a
title @a title [{"text": "得分：","bold":true,"color": "yellow"},{"score":{"objective":"SCORE","name":"@r[tag=single_player]"},"bold":true,"color": "yellow"}]
title @a subtitle [{"text": "挑战结束"}]
tellraw @a [{"text": "=================== 游戏结束 ==================","bold": true,"color": "yellow"}]
tellraw @a [{"text": "挑战结束，得分：","bold":true,"color": "dark_aqua"},{"score":{"objective":"SCORE","name":"@r[tag=single_player]"},"bold":true,"color": "dark_aqua"}]
tellraw @a {"text":"---------------------------------------------------","color": "yellow"}
tellraw @a [{"text": "▶【 重置数据包 】","clickEvent": {"action":"run_command","value":"/function knockout_jd:root/reload"},"bold": true,"color": "yellow"}]
tellraw @a [{"text": "==============================================","bold": true,"color": "yellow"}]
bossbar remove time
scoreboard objectives remove r
tag @a remove single_player
