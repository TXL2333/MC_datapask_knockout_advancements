clear @a minecraft:written_book{title:"§l§3选队",author:".",pages:['[{"text":"=========选队=========\\n\\n","color":"dark_aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"         【 red  】\\n","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/team join red"}},{"text":"         【dark_aqua】\\n","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/team join dark_aqua"}},{"text":"         【 gold  】\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/team join gold"}},{"text":"         【light_purple】\\n","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/team join light_purple"}},{"text":"         【Dark_gray】\\n\\n\\n","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/team join dark_gray"}}]','[{"text":"=========设置=========\\n\\n","color":"dark_aqua","bold":true},{"text":"◈First round◈\\n","color":"dark_aqua","bold": true},{"text": "\\n▶【五分钟】","clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 5"},"color":"dark_aqua","bold":true},{"text": "\\n▶【十分钟】","hoverEvent": { "action":"show_text","value": "默认"},"color":"dark_aqua","bold":true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 10"}},{"text": "\\n▶【十五分钟】","clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 15"},"color":"dark_aqua","bold":true},{"text": "\\n▶【二十分钟】","clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 20"},"color":"dark_aqua","bold":true},{"text": "\\n▶【自定义】","clickEvent": {"action": "run_command","value": "/execute as @s run tell @s 执行scoreboard players set #i initialization 分钟"},"color":"dark_aqua","bold":true},{"text": "\\n\\n\\n达成“解放末地”可直接胜利","bold": true,"color": "dark_aqua"},{"text":"【重载数据包】\\n","color":"gray","italic":true,"clickEvent": {"action": "run_command","value": "/function knockout_jd:root/reload"},"hoverEvent": { "action":"show_text","value": "执行：/function knockout_jd:root/reload"}}]','[{"text":"\\n\\n\\n\\n\\n     ▶【就绪】","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function knockout_jd:root/initialization"},"hoverEvent":{"action":"show_text","value":"一切就绪？"}}]']}
scoreboard objectives add 60 dummy
scoreboard players set #i 60 60
    scoreboard objectives add r dummy
    scoreboard players set #i r 3
    scoreboard objectives add min dummy
    scoreboard objectives add s dummy
    scoreboard objectives add time dummy
    scoreboard players operation #i initialization *= #i 60
    scoreboard players operation #i time = #i initialization
bossbar add time {"text": "游戏未开始","bold": true,"color": "yellow"}
bossbar set time players @a 
bossbar set time color yellow
execute store result bossbar time max run scoreboard players get #i time
bossbar set time style notched_10
scoreboard objectives remove initialization
    scoreboard objectives remove SCORE
    scoreboard objectives add SCORE dummy [{"text":"得分","color":"dark_aqua","yellow": true}]
    scoreboard objectives setdisplay sidebar SCORE
    #scoreboard objectives remove Gold_coin
    #scoreboard objectives add Gold_coin dummy [{"text":""}]
    scoreboard objectives remove Round
    scoreboard objectives add Round dummy
    scoreboard players set #i Round 1
    advancement revoke @a everything
    say 进度已重置
    advancement grant @a only knockout_jd:root
    tag @a remove out
    execute as @a[team=!,gamemode=!survival] run gamemode survival @s
function knockout_jd:time/ready_2



