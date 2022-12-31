playsound minecraft:block.note_block.chime music @a
title @a title [{"text": "加时","color": "dark_aqua","bold": true}]
tellraw @a [{"text": "======加时一分钟======","color": "yellow","bold": true}]
effect give @a speed 60 3
effect give @a haste 60 3
effect give @a jump_boost 60 2
scoreboard players add #i time 60
bossbar set time max 60
playsound block.note_block.hat music @a 
function knockout_jd:time/time