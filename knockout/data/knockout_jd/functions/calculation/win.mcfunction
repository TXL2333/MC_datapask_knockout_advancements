#================================= advancements knockout =================================
execute as @r[team=dark_aqua,tag=!out] run title @a title {"text": "Dark_aqua WIN","color": "gold","bold": true}
execute as @r[team=dark_red,tag=!out] run title @a title {"text": "Dark_red WIN","color": "gold","bold": true}
execute as @r[team=dark_gray,tag=!out] run title @a title {"text": "Dark_gray WIN","color": "gold","bold": true}
execute as @r[team=gold,tag=!out] run title @a title {"text": "Gold WIN","color": "gold","bold": true}
execute as @r[team=light_purple,tag=!out] run title @a title {"text": "Light_purple WIN","color": "gold","bold": true}
execute as @r[team=dark_aqua,tag=!out] run title @a subtitle [{"text": "◈得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#dark_aqua"}}]
execute as @r[team=dark_red,tag=!out] run title @a subtitle [{"text": "◈得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#dark_red"}}]
execute as @r[team=dark_gray,tag=!out] run title @a subtitle  [{"text": "◈得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#dark_gray"}}]
execute as @r[team=gold,tag=!out] run title @a subtitle  [{"text": "◈得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#gold"}}]
execute as @r[team=light_purple,tag=!out] run title @a subtitle [{"text": "◈得分：","color": "gold","bold": true},{"score": {"objective":"sum","name": "#light_purple"}}]
title @a times 1 5 1
playsound minecraft:block.note_block.bell music @a
advancement grant @a[tag=!out] only knockout_jd:victory
scoreboard objectives remove r
tag @a[tag=single_player] remove single_player
execute as @a[tag=!out] at @a[tag=!out] run summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_star",Count:1,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:4,Colors:[I;16755968],FadeColors:[I;16735744]}]}}}}
tellraw @a [{"text": "◈End◈","bold": true,"color": "red"},{"text": "▶【 again 】","clickEvent": {"action":"run_command","value":"/function knockout_jd:root/reload"},"bold": true,"color": "green"}]
bossbar remove time
#                                                                              V1.0
#                                                                    ———2333333333333333333
#==========================================================================================