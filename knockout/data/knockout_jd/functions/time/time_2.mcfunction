bossbar set time color red
playsound minecraft:block.note_block.bell music @a
title @a title [{"score":{"objective":"time","name":"#i"},"color":"gold","bold":true}]
    execute if score #i time matches 2.. run title @a subtitle [{"text": "seconds","bold": true,"color": "gold"}]
    execute if score #i time matches 1 run title @a subtitle [{"text": "second","bold": true,"color": "gold"}]