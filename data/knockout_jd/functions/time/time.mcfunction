scoreboard players remove #i time 1
execute store result bossbar time value run scoreboard players get #i time
scoreboard players operation #i s = #i time
scoreboard players operation #i s %= #i 60
scoreboard players operation #i min = #i time
scoreboard players operation #i min /= #i 60 
  bossbar set time name [{"text": "计时："},{"score":{"objective": "min","name": "#i"},"bold": true,"color": "dark_aqua"},{"text": ":"},{"score":{"objective": "s","name": "#i"},"bold": true,"color": "dark_aqua"}]
execute if score #i time matches ..10 run function knockout_jd:time/time_2
execute if score #i time matches 0 run schedule function knockout_jd:calculation/sum 1t
execute unless score #i time matches 0 run schedule function knockout_jd:time/time 1s