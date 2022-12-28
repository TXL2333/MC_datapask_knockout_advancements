tellraw @a [{"text": "============就绪============","bold": true,"color": "yellow"}]
tellraw @a [{"text": "◈First round◈  :  ","bold": true,"color": "yellow"},{"score":{"objective":"initialization","name": "#i"}},{"text": "min"}]

execute if score #red team matches 1.. run tellraw @a [{"text": "●red:  ","color": "red"},{"score":{"name": "#red","objective": "team"}}]
execute if score #light_purple team matches 1.. run tellraw @a [{"text": "●light_purple:  ","color": "light_purple"},{"score":{"name": "#light_purple","objective": "team"}}]
execute if score #gold team matches 1.. run tellraw @a [{"text": "●gold:  ","color": "gold"},{"score":{"name": "#gold","objective": "team"}}]
execute if score #dark_gray team matches 1.. run tellraw @a [{"text": "●dark_gray:  ","color": "dark_gray"},{"score":{"name": "#dark_gray","objective": "team"}}]
execute if score #dark_aqua team matches 1.. run tellraw @a [{"text": "●dark_aqua:  ","color": "dark_aqua"},{"score":{"name": "#dark_aqua","objective": "team"}}]

tellraw @a [{"text": "▶【 START 】◀","bold": true,"color": "yellow","clickEvent": { "action":"run_command","value": "/function knockout_jd:time/ready_1"}}]
tellraw @a [{"text": "============================","bold": true,"color": "yellow"}]