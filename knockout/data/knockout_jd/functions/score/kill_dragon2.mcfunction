#=================================== end kill_drago ======================================
schedule clear knockout_jd:time/time
bossbar set time name {"text": "解放末地！","color": "purple"}
bossbar set time color green
playsound minecraft:block.note_block.bell music @a
execute as @s[team=dark_aqua] run title @a title {"text": "Dark_aqua WIN","color": "gold","bold": true}
execute as @s[team=dark_red] run title @a title {"text": "Dark_red WIN","color": "gold","bold": true}
execute as @s[team=dark_gray] run title @a title {"text": "Dark_gray WIN","color": "gold","bold": true}
execute as @s[team=gold] run title @a title {"text": "Gold WIN","color": "gold","bold": true}
execute as @s[team=light_purple,] run title @a title {"text": "Light_purple WIN","color": "gold","bold": true}
title @a subtitle [{"text": "◈解放末地◈","color": "dark_aqua","bold": true}]
title @a times 1 5 1
execute as @a[tag=!out] at @a[tag=!out] run summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_star",Count:1,tag:{Fireworks:{Explosions:[{Flicker:1b,Trail:1b,Type:4,Colors:[I;16755968],FadeColors:[I;16735744]}]}}}}
execute as @s[team=dark_aqua] run advancement grant @a[team=dark_aqua] only knockout_jd:victory
execute as @s[team= dark_gray] run advancement grant @a[team= dark_gray] only knockout_jd:victory
execute as @s[team= dark_red] run advancement grant @a[team= dark_red] only knockout_jd:victory
execute as @s[team= gold] run advancement grant @a[team= gold] only knockout_jd:victory
execute as @s[team= light_purple] run advancement grant @a[team= light_purple] only knockout_jd:victory
scoreboard objectives remove r
tag @a[tag=single_player] remove single_player
tellraw @a [{"text": "◈End◈","bold": true,"color": "yellow"},{"text": "▶【 again 】","clickEvent": {"action":"run_command","value":"/function knockout_jd:root/reload"},"bold": true,"color": "yellow"}]
#                                                                               V1.0
#                                                                    ——————233333333333333
#=========================================================================================