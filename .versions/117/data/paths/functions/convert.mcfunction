# convert.mcfunction
scoreboard players set @s path_timer 0
fill ~ ~ ~ ~ ~ ~ dirt_path replace dirt
fill ~ ~ ~ ~ ~ ~ dirt replace grass_block

# optional paths
execute if score @s podzol_path matches 1 run fill ~ ~ ~ ~ ~ ~ dirt replace podzol
execute if score @s mycelium_path matches 1 run fill ~ ~ ~ ~ ~ ~ dirt replace mycelium
execute if score @s nylium_path matches 1 run fill ~ ~ ~ ~ ~ ~ netherrack replace crimson_nylium
execute if score @s nylium_path matches 1 run fill ~ ~ ~ ~ ~ ~ netherrack replace warped_nylium
execute if score @s coarse_path matches 1 run fill ~ ~ ~ ~ ~ ~ dirt replace coarse_dirt
execute if score @s sand_path matches 1 run fill ~ ~ ~ ~ ~ ~ sandstone replace sand
execute if score @s redsand_path matches 1 run fill ~ ~ ~ ~ ~ ~ red_sandstone replace red_sand
execute if score @s stone_path matches 1 run fill ~ ~ ~ ~ ~ ~ cobblestone replace stone
execute if score @s deep_path matches 1 run fill ~ ~ ~ ~ ~ ~ deepslate replace cobblestone
execute if score @s deepc_path matches 1 run fill ~ ~ ~ ~ ~ ~ cobbled_deepslate replace deepslate
execute if score @s torch_path matches 1 run fill ~ ~1 ~ ~ ~1 ~ torch replace air