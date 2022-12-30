#================================= advancements knockout =================================
execute as @r[team=dark_aqua,tag=!out] run title @a title {"text": "DARK_AQUA","color": "gold","bold": true}
execute as @r[team=red,tag=!out] run title @a title {"text": "RED WIN","color": "gold","bold": true}
execute as @r[team=dark_gray,tag=!out] run title @a title {"text": "DARK_GRAY WIN","color": "gold","bold": true}
execute as @r[team=gold,tag=!out] run title @a title {"text": "GOLD WIN","color": "gold","bold": true}
execute as @r[team=light_purple,tag=!out] run title @a title {"text": "LIGHT_PURPLE WIN","color": "gold","bold": true}
execute as @r[team=dark_aqua,tag=!out] run title @a subtitle [{"text": "得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#dark_aqua"}}]
execute as @r[team=red,tag=!out] run title @a subtitle [{"text": "得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#red"}}]
execute as @r[team=dark_gray,tag=!out] run title @a subtitle  [{"text": "得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#dark_gray"}}]
execute as @r[team=gold,tag=!out] run title @a subtitle  [{"text": "得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#gold"}}]
execute as @r[team=light_purple,tag=!out] run title @a subtitle [{"text": "得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#light_purple"}}]
playsound minecraft:block.note_block.bell music @a
advancement grant @a[tag=!out] only knockout_jd:victory
scoreboard objectives remove r
tag @a[tag=single_player] remove single_player
execute as @a[tag=!out] at @a[tag=!out] run summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_star",Count:1,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:4,Colors:[I;16755968],FadeColors:[I;16735744]}]}}}}
tellraw @a [{"text": "=================== 游戏结束 ===================","bold": true,"color": "yellow"}]
execute as @r[team=red,tag=!out] run tellraw @a [{"text": "RED WIN 得分：","bold": true,"color": "yellow"},{"score":{"name":"#red","objective": "sum","bold": true,"color": "yellow"}}]
execute as @r[team=dark_aqua,tag=!out] run tellraw @a [{"text": "DRAK_AQUQ WIN 得分：","bold": true,"color": "yellow"},{"score":{"name":"#dark_aqua","objective": "sum","bold": true,"color": "yellow"}}]
execute as @r[team=dark_gray,tag=!out] run tellraw @a [{"text": "DRAK_GRAY WIN 得分：","bold": true,"color": "yellow"},{"score":{"name":"#dark_gray","objective": "sum","bold": true,"color": "yellow"}}]
execute as @r[team=gold,tag=!out] run tellraw @a [{"text": "GOLD WIN 得分：","bold": true,"color": "yellow"},{"score":{"name":"#gold","objective": "sum","bold": true,"color": "yellow"}}]
execute as @r[team= light_purple,tag=!out] run tellraw @a [{"text": "LIGHT_PURPLE WIN 得分：","bold": true,"color": "yellow"},{"score":{"name":"#light_purple","objective": "sum","bold": true,"color": "yellow"}}]
tellraw @a {"text":"---------------------------------------------------","color": "yellow"}
tellraw @a [{"text":"▶【 重载数据包 】","clickEvent": {"action":"run_command","value":"/function knockout_jd:root/reload"},"bold": true,"color": "yellow"}]
tellraw @a [{"text": "==============================================","bold": true,"color": "yellow"}]
bossbar remove time
#                                                                              V1.1
#                                                                    ———2333333333333333333
#==========================================================================================