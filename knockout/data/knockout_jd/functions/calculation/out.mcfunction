playsound minecraft:block.note_block.bell music @a
execute if score #red compare matches 1 run tag @a[team=red] add out
execute if score #dark_aqua compare matches 1 run tag @a[team=dark_aqua] add out
execute if score #dark_gray compare matches 1 run tag @a[team=dark_gray] add out
execute if score #gold compare matches 1 run tag @a[team=gold] add out
execute if score #light_purple compare matches 1 run tag @a[team=light_purple] add out
execute as @r[team=dark_aqua,tag=out] run title @a title {"text": "dark_aqua出局","bold":true,"color": "yellow"}
execute as @r[team=red,tag=out] run title @a title {"text": "red出局","bold":true,"color": "yellow"}
execute as @r[team=dark_gray,tag=out] run title @a title {"text": "dark_gray出局","bold":true,"color": "yellow"}
execute as @r[team=gold,tag=out] run title @a title  {"text": "gold出局","bold":true,"color": "yellow"}
execute as @r[team=light_purple,tag=out] run title @a title {"text": "light_purple出局","bold":true,"color": "yellow"}
team leave @a[tag=out]
scoreboard players operation @a r = @a SCORE
scoreboard objectives remove SCORE
scoreboard objectives add SCORE dummy {"text": "得分","bold": true,"color": "yellow"}
scoreboard players operation @a[team=!] SCORE = @a r
scoreboard objectives setdisplay sidebar SCORE
gamemode spectator @a[tag=out]
tellraw @a[tag=out,tag=!single_player] {"text": "▶【观战TP】◀","color": "dark_aqua","bold": true,"clickEvent": {"action": "run_command","value": "/tp @r[tag=!out]"}}
scoreboard objectives remove team
scoreboard objectives add team dummy
execute as @a[team= dark_aqua] run scoreboard players add #dark_aqua team 1
execute as @a[team= dark_gray] run scoreboard players add #dark_gray team 1
execute as @a[team= red] run scoreboard players add #red team 1
execute as @a[team= gold] run scoreboard players add #gold team 1
execute as @a[team= light_purple] run scoreboard players add #light_purple team 1
#统计玩家
execute as @r[team= dark_aqua] run scoreboard players add #i team 1
execute as @r[team= dark_gray] run scoreboard players add #i team 1
execute as @r[team= red] run scoreboard players add #i team 1
execute as @r[team= gold] run scoreboard players add #i team 1
execute as @r[team= light_purple] run scoreboard players add #i team 1
#统计有玩家的团队数|#i|team
execute as @a[tag=single_player] run schedule function knockout_jd:calculation/single_player 1s
execute if score #i team matches 1 run schedule function knockout_jd:calculation/win 1s
execute if score #i team matches 2.. run schedule function knockout_jd:calculation/next_round 1s









