execute if score #red team matches 1.. run scoreboard players remove #red sum 1
execute if score #gold team matches 1.. run scoreboard players remove #gold sum 1
execute if score #dark_gray team matches 1.. run scoreboard players remove #dark_gray sum 1
execute if score #light_purple team matches 1.. run scoreboard players remove #light_purple sum 1
execute if score #dark_aqua team matches 1.. run scoreboard players remove #dark_aqua sum 1
scoreboard objectives remove compare
scoreboard objectives add compare dummy 
execute if score #red sum matches ..0 run scoreboard players add #i compare 1
execute if score #gold sum matches ..0 run scoreboard players add #i compare 1
execute if score #dark_gray sum matches ..0 run scoreboard players add #i compare 1
execute if score #light_purple sum matches ..0 run scoreboard players add #i compare 1
execute if score #dark_aqua sum matches ..0 run scoreboard players add #i compare 1

execute if score #red sum matches ..0 run scoreboard players set #red compare 1
execute if score #gold sum matches ..0 run scoreboard players set #gold compare 1
execute if score #dark_gray sum matches ..0 run scoreboard players set #dark_gray compare 1
execute if score #light_purple sum matches ..0 run scoreboard players set #light_purple compare 1
execute if score #dark_aqua sum matches ..0 run scoreboard players set #dark_aqua compare 1

execute if score #i compare matches 1 run schedule function knockout_jd:calculation/out 1s
execute if score #i compare matches 2.. run schedule function knockout_jd:calculation/overtime 1s
execute unless score #i compare matches 1.. run function knockout_jd:calculation/compare
