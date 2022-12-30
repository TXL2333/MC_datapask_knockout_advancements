scoreboard players add #i time 300
bossbar set time max 300
bossbar set time color yellow
say Next round!
tellraw @a [{"text": "定位：【平原村庄】","clickEvent": { "action":"run_command","value": "/locate structure village_plains"}},{"text": " 【要塞】","clickEvent": { "action":"run_command","value": "/locate structure stronghold "}},{"text": " 【远古城市】","clickEvent": { "action":"run_command","value": "/locate structure ancient_city"}},{"text": " 【林地府邸】","clickEvent": { "action":"run_command","value": "/locate structure mansion"}},{"text": " 【下界要塞】","clickEvent": { "action":"run_command","value": "/locate structure fortress"}}] 
#effect give @a speed 300 3
#effect give @a haste 300 3
#effect give @a jump_boost 300 2
function knockout_jd:time/time
