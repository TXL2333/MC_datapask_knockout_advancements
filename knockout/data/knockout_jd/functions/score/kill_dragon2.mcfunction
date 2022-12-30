#=================================== end kill_drago ======================================
schedule clear knockout_jd:time/time
bossbar set time name {"text": "解放末地！","color": "purple"}
bossbar set time color green
playsound minecraft:block.note_block.bell music @a
execute as @s[team=dark_aqua] run title @a title {"text": "DARK_AQUA WIN","color": "gold","bold": true}
execute as @s[team=red] run title @a title {"text": "RED WIN","color": "gold","bold": true}
execute as @s[team=dark_gray] run title @a title {"text": "Dark_gray WIN","color": "gold","bold": true}
execute as @s[team=gold] run title @a title {"text": "GOLD WIN","color": "gold","bold": true}
execute as @s[team=light_purple,] run title @a title {"text": "LIGHT_PURPLE WIN","color": "gold","bold": true}
title @a subtitle [{"text": "解放末地","color": "dark_aqua","bold": true}]
execute as @a[tag=!out] at @a[tag=!out] run summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_star",Count:1,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:4,Colors:[I;16755968],FadeColors:[I;16735744]}]}}}}
execute as @s[team=dark_aqua] run advancement grant @a[team=dark_aqua] only knockout_jd:victory
execute as @s[team= dark_gray] run advancement grant @a[team= dark_gray] only knockout_jd:victory
execute as @s[team= red] run advancement grant @a[team= red] only knockout_jd:victory
execute as @s[team= gold] run advancement grant @a[team= gold] only knockout_jd:victory
execute as @s[team= light_purple] run advancement grant @a[team= light_purple] only knockout_jd:victory
scoreboard objectives remove r
tag @a[tag=single_player] remove single_player
tellraw @a [{"text": "=================== 游戏结束 ===================","bold": true,"color": "yellow"}]
execute as @s[team=red,tag=!out] run tellraw @a [{"text": "RED WIN 解放末地 得分：","bold": true,"color": "yellow"},{"score":{"name":"#red","objective": "sum","bold": true,"color": "yellow"}}]
execute as @s[team=dark_aqua,tag=!out] run tellraw @a [{"text": "DRAK_AQUQ WIN 解放末地 得分：","bold": true,"color": "yellow"},{"score":{"name":"#dark_aqua","objective": "sum","bold": true,"color": "yellow"}}]
execute as @s[team=dark_gray,tag=!out] run tellraw @a [{"text": "DRAK_GRAY WIN 解放末地 得分：","bold": true,"color": "yellow"},{"score":{"name":"#dark_gray","objective": "sum","bold": true,"color": "yellow"}}]
execute as @s[team=gold,tag=!out] run tellraw @a [{"text": "GOLD WIN 解放末地 得分：","bold": true,"color": "yellow"},{"score":{"name":"#gold","objective": "sum","bold": true,"color": "yellow"}}]
execute as @s[team=light_purple,tag=!out] run tellraw @a [{"text": "LIGHT_PURPLE WIN 解放末地 得分：","bold": true,"color": "yellow"},{"score":{"name":"#light_purple","objective": "sum","bold": true,"color": "yellow"}}]
tellraw @a {"text":"---------------------------------------------------","color": "yellow"}
tellraw @a [{"text":"▶【 重载数据包 】","clickEvent": {"action":"run_command","value":"/function knockout_jd:root/reload"},"bold": true,"color": "yellow"}]
tellraw @a [{"text": "==============================================","bold": true,"color": "yellow"}]
#                                                                               V1.1
#                                                                    ——————233333333333333
#=========================================================================================