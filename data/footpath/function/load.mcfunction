scoreboard objectives add fp.ticks dummy
scoreboard objectives add fp.settings dummy

# Initialize defaults on first install only (scores persist between reloads)
scoreboard players add #init fp.settings 0
execute if score #init fp.settings matches 0 run scoreboard players set #threshold fp.settings 40
execute if score #init fp.settings matches 0 run scoreboard players set #path_size fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #grass fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #stone fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #coarse_dirt fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #deepslate fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #mycelium fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #nylium fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #podzol fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #sand fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #red_sand fp.settings 1
execute if score #init fp.settings matches 0 run scoreboard players set #init fp.settings 1

# Constant used by apply.mcfunction to convert slider seconds -> ticks
scoreboard players set #twenty fp.settings 20
