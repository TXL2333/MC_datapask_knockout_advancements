playsound minecraft:block.note_block.bit music @a
scoreboard objectives remove team
scoreboard objectives add team dummy
execute as @a[team= dark_aqua] run scoreboard players add #dark_aqua team 1
execute as @a[team= dark_gray] run scoreboard players add #dark_gray team 1
execute as @a[team= red] run scoreboard players add #red team 1
execute as @a[team= gold] run scoreboard players add #gold team 1
execute as @a[team= light_purple] run scoreboard players add #light_purple team 1
#统计玩家
scoreboard players set #i team 0
execute as @r[team= dark_aqua] run scoreboard players add #i team 1
execute as @r[team= dark_gray] run scoreboard players add #i team 1
execute as @r[team= red] run scoreboard players add #i team 1
execute as @r[team= gold] run scoreboard players add #i team 1
execute as @r[team= light_purple] run scoreboard players add #i team 1
#统计有玩家的团队数|#i|team
execute if score #i team matches 1 run tellraw @a [{"text":"▶当前仅一个团队无法进行游戏","color":"dark_aqua","bold":true},{"text":"【进入单人挑战】","color": "yellow","clickEvent":{"action":"run_command","value":"/function knockout_jd:root/single_player"},"hoverEvent":{"action":"show_text","value":"单人游戏 Single player game"}}]
execute if score #i team matches 0 run tellraw @a [{"text": "▶没有检测到团队","color": "dark_aqua","bold": true}]
execute if score #i team matches 2.. run function knockout_jd:root/initialization_2