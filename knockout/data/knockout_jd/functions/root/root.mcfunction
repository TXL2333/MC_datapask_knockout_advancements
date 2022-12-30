team add red
team modify red color red 
team modify red displayName {"text": "red","color": "red","bold": true}
team add dark_aqua
team modify dark_aqua color dark_aqua 
team modify dark_aqua displayName {"text": "dark_aqua","color": "dark_aqua","bold": true}
team add gold
team modify gold color gold 
team modify gold displayName {"text": "gold","color": "gold","bold": true}
team add light_purple
team modify light_purple color light_purple 
team modify light_purple displayName {"text": "light_purple","color": "light_purple","bold": true}
team add dark_gray
team modify dark_gray color dark_gray 
team modify dark_gray displayName {"text": "Dark_gray","color": "dark_gray","bold": true}
scoreboard objectives add initialization dummy
scoreboard players set #i initialization 10 
give @a minecraft:written_book{title:"§l§3选队",author:".",pages:['[{"text":"        -选择团队-\\n\\n","color":"dark_aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"         【 red  】\\n","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/team join red"}},{"text":"         【dark_aqua】\\n","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/team join dark_aqua"}},{"text":"         【 gold  】\\n","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/team join gold"}},{"text":"         【light_purple】\\n","color":"light_purple","bold":true,"clickEvent":{"action":"run_command","value":"/team join light_purple"}},{"text":"         【Dark_gray】\\n\\n\\n","color":"dark_gray","bold":true,"clickEvent":{"action":"run_command","value":"/team join dark_gray"}}]','[{"text":"   ◆设置◆\\n\\n","color":"dark_aqua","bold":true},{"text":"◈First round◈\\n","color":"dark_aqua","bold": true},{"text": "\\n▶【五分钟】","clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 5"},"color":"dark_aqua","bold":true},{"text": "\\n▶【十分钟】","hoverEvent": { "action":"show_text","value": "默认"},"color":"dark_aqua","bold":true,"clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 10"}},{"text": "\\n▶【十五分钟】","clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 15"},"color":"dark_aqua","bold":true},{"text": "\\n▶【二十分钟】","clickEvent": {"action": "run_command","value": "/scoreboard players set #i initialization 20"},"color":"dark_aqua","bold":true},{"text": "\\n▶【自定义】","clickEvent": {"action": "run_command","value": "/execute as @s run tell @s 执行scoreboard players set #i initialization 分钟"},"color":"dark_aqua","bold":true},{"text": "\\n\\n\\n达成“解放末地”可直接胜利"},{"text":"【重载数据包】\\n","color":"gray","italic":true,"clickEvent": {"action": "run_command","value": "/function knockout_jd:root/reload"},"hoverEvent": { "action":"show_text","value": "执行：/function knockout_jd:root/reload"}}]','[{"text":"\\n\\n\\n\\n\\n     ▶【就绪】","color":"dark_aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function knockout_jd:root/initialization"},"hoverEvent":{"action":"show_text","value":"一切就绪？"}}]']}
