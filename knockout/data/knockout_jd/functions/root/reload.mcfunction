tellraw @a [{"selector":"@s"},{"text":"重置了数据包"}]
schedule clear knockout_jd:time/time
schedule clear knockout_jd:time/ready_2
schedule clear knockout_jd:time/ready_1
bossbar remove time
scoreboard objectives remove time
scoreboard objectives remove r
scoreboard objectives remove SCORE
gamemode survival @a[gamemode=spectator]
tag @a remove out
tag @a remove single_player
team leave @a
reload