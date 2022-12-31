scoreboard players add #i time 300
bossbar set time max 300
bossbar set time color yellow
scoreboard players add #i Round 1
tellraw @a [{"text":"========","color": "yellow","bold": true},{"text":"Round ","color": "yellow","bold": true},{"score":{"name": "#i","objective": "Round"},"bold": true,"color": "yellow"},{"text":"========","color": "yellow","bold": true}]
title @a title [{"text":"Round ","color": "dark_aqua","bold": true},{"score":{"name": "#i","objective": "Round"},"bold": true,"color": "dark_aqua"}]
playsound minecraft:block.note_block.flute music @a
#tellraw @a [{"text": "定位：【平原村庄】","clickEvent": { "action":"run_command","value": "/locate structure village_plains"}},{"text": " 【要塞】","clickEvent": { "action":"run_command","value": "/locate structure stronghold "}},{"text": " 【远古城市】","clickEvent": { "action":"run_command","value": "/locate structure ancient_city"}},{"text": " 【林地府邸】","clickEvent": { "action":"run_command","value": "/locate structure mansion"}},{"text": " 【下界要塞】","clickEvent": { "action":"run_command","value": "/locate structure fortress"}}] 
#effect give @a speed 300 3
#effect give @a haste 300 3
#effect give @a jump_boost 300 2
schedule function knockout_jd:time/time 1s