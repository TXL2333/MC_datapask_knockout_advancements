
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
    tag @a remove out
    execute as @a[team=!,gamemode=!survival] run gamemode survival @s
function knockout_jd:time/ready_2



