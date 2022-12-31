playsound minecraft:block.note_block.bell music @a
execute if score #red compare matches 1 run tag @a[team=red] add out
execute if score #dark_aqua compare matches 1 run tag @a[team=dark_aqua] add out
execute if score #dark_gray compare matches 1 run tag @a[team=dark_gray] add out
execute if score #gold compare matches 1 run tag @a[team=gold] add out
execute if score #light_purple compare matches 1 run tag @a[team=light_purple] add out
#--------------------------------------------------------------------------------------
execute as @r[team=dark_aqua,tag=out] run title @a title [{"text": "蓝-","bold":true,"color": "dark_aqua"},{"text": "出局","bold": true,"color": "yellow"}]
execute as @r[team=red,tag=out] run title @a title [{"text": "红-","bold":true,"color": "red"},{"text": "出局","bold": true,"color": "yellow"}]
execute as @r[team=dark_gray,tag=out] run title @a title [{"text": "灰-","bold":true,"color": "dark_gray"},{"text": "出局","bold": true,"color": "yellow"}]
execute as @r[team=gold,tag=out] run title @a title [{"text": "金-","bold":true,"color": "gold"},{"text": "出局","bold": true,"color": "yellow"}]
execute as @r[team=light_purple,tag=out] run title @a title [{"text": "粉-","bold":true,"color": "light_purple"},{"text": "出局","bold": true,"color": "yellow"}]
#--------------------------------------------------------------------------------------
tellraw @a [{"text": "=============第","color": "yellow","bold": true},{"score":{"name": "#i","objective": "Round"},"bold": true,"color": "dark_aqua"},{"text": "轮结束=============","color": "yellow","bold":true}]
execute as @r[team=dark_aqua,tag=out] run tellraw @a [{"text": "蓝-","bold":true,"color": "dark_aqua"},{"text": "出局 | 得分","bold": true,"color": "yellow"},{"score":{"name":"#dark_aqua","objective": "r","bold": true,"color": "dark_aqua"}}]
execute as @r[team=red,tag=out] run tellraw @a [{"text": "红-","bold":true,"color": "red"},{"text": "出局 | 得分：","bold": true,"color": "yellow"},{"score":{"name":"#red","objective": "r","bold": true,"color": "dark_aqua"}}]
execute as @r[team=dark_gray,tag=out] run tellraw @a [{"text": "灰-","bold":true,"color": "dark_gray"},{"text": "出局 | 得分：","bold": true,"color": "yellow"},{"score":{"name":"#dark_gray","objective": "r","bold": true,"color": "dark_aqua"}}]
execute as @r[team=gold,tag=out] run tellraw @a [{"text": "金-","bold":true,"color": "gold"},{"text": "出局 | 得分：","bold": true,"color": "yellow"},{"score":{"name":"#gold","objective": "r","bold": true,"color": "dark_aqua"}}]
execute as @r[team=light_purple,tag=out] run tellraw @a [{"text": "粉-","bold":true,"color": "light_purple"},{"text": "出局 | 得分：","bold": true,"color": "yellow"},{"score":{"name":"#light_purple","objective": "r","bold": true,"color": "dark_aqua"}}]
team leave @a[tag=out]
scoreboard players operation @a r = @a SCORE
scoreboard objectives remove SCORE
scoreboard objectives add SCORE dummy {"text": "得分","bold": true,"color": "dark_aqua"}
scoreboard players operation @a[team=!] SCORE = @a r
scoreboard objectives setdisplay sidebar SCORE
gamemode spectator @a[tag=out]
tellraw @a[tag=out,tag=!single_player] {"text": "---------------【观战TP】---------------","color": "yellow","bold": true,"clickEvent": {"action": "run_command","value": "/tp @r[tag=out]"}}
tellraw @a {"text": "==============================================","bold": true,"color": "yellow"}
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
execute if score #i team matches 1 run schedule function knockout_jd:calculation/win 1s
execute if score #i team matches 2.. run schedule function knockout_jd:calculation/next_round 1s









