# convert.mcfunction
scoreboard players set @s grass_timer 0
fill ~ ~ ~ ~ ~ ~ grass_path replace dirt
fill ~ ~ ~ ~ ~ ~ dirt replace grass_block
fill ~ ~ ~ ~ ~ ~ dirt replace coarse_dirt
fill ~ ~ ~ ~ ~ ~ dirt replace podzol

# optional paths
execute if score @s sand_path matches 1 run fill ~ ~ ~ ~ ~ ~ sandstone replace sand
execute if score @s redsand_path matches 1 run fill ~ ~ ~ ~ ~ ~ red_sandstone replace red_sand
execute if score @s stone_path matches 1 run fill ~ ~ ~ ~ ~ ~ cobblestone replace stone
execute if score @s mycelium_path matches 1 run fill ~ ~ ~ ~ ~ ~ dirt replace mycelium