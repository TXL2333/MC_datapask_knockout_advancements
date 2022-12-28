tag @s add single_player
title @a title {"text": "单人挑战 Single player game","bold": true,"color": "dark_aqua"}
tellraw @a {"text":"【立即结束||单人游戏】","bold": true,"color": "yellow","clickEvent":{"action":"run_command","value":"/function knockout_jd:root/reload","bold": true,"color": "red"}}
schedule function knockout_jd:time/ready_1 1s