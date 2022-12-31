tag @s add single_player
title @a title {"text": "单人挑战 Single player game","bold": true,"color": "dark_aqua"}
tellraw @a {"text": "===============单人挑战==============="}
tellraw @a [{"text": "计时  :  ","bold": true,"color": "yellow"},{"score":{"objective":"initialization","name": "#i"}},{"text": "分钟"}]
tellraw @a {"text": "--------------------------------------------","bold": true,"color": "yellow"}
tellraw @a {"text":"▶【立即结束单人挑战】","bold": true,"color": "yellow","clickEvent":{"action":"run_command","value":"/function knockout_jd:root/reload"}}
tellraw @a [{"text": "==============================================","bold": true,"color": "yellow"}]
schedule function knockout_jd:time/ready_1 1s