playsound block.note_block.hat music @a
    execute if score #i r matches 1.. run title @a title [{"score":{"objective":"r","name":"#i"},"color": "yellow","bold": true}]
    execute if score #i r matches 0 run title @a title [{"text":"START","color":"yellow","bold":true}]
        scoreboard players remove #i r 1
execute if score #i r matches -1 run schedule function knockout_jd:time/time 1t
execute unless score #i r matches -1 run schedule function knockout_jd:time/ready_2 1s