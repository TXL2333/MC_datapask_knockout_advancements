bossbar set time name {"text": "结算中...","color": "yellow"}
scoreboard objectives remove sum
scoreboard objectives add sum dummy
scoreboard players operation #red sum += @a[team=red] SCORE
scoreboard players operation #dark_aqua sum += @a[team= dark_aqua] SCORE
scoreboard players operation #dark_gray sum += @a[team= dark_gray] SCORE
scoreboard players operation #gold sum += @a[team= gold] SCORE
scoreboard players operation #light_purple sum += @a[team= light_purple] SCORE

scoreboard players operation #red r += #red sum
scoreboard players operation #dark_aqua r += #dark_aqua sum
scoreboard players operation #dark_gray r += #dark_gray sum
scoreboard players operation #gold r += #gold sum
scoreboard players operation #light_purple r += #light_purple sum

#总和 ---> sum
tellraw @a {"text": "----------------------结算----------------------","bold": true,"color": "dark_gray"}
execute if score #red team matches 1.. run tellraw @a [{"text":"red:","color":"red"},{"score":{"objective":"sum","name":"#red"},"bold": true}]
execute if score #dark_aqua team matches 1.. run tellraw @a [{"text":"dark_aqua:","color":"dark_aqua"},{"score":{"objective":"sum","name":"#dark_aqua"},"bold": true}]
execute if score #gold team matches 1.. run tellraw @a [{"text":"gold:","color":"gold"},{"score":{"objective":"sum","name":"#gold"},"bold": true}]
execute if score #light_purple team matches 1.. run tellraw @a [{"text":"light_purple:","color":"light_purple"},{"score":{"objective":"sum","name":"#light_purple"},"bold": true}]
execute if score #dark_gray team matches 1.. run tellraw @a [{"text":"dark_gray:","color":"dark_gray"},{"score":{"objective":"sum","name":"#dark_gray"},"bold": true}]
tellraw @a {"text": "------------------------------------------------","bold": true,"color": "dark_gray"}

schedule function knockout_jd:calculation/compare 1s
execute as @r[tag=single_player] run function knockout_jd:calculation/single_player
