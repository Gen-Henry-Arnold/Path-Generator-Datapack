# Do not convert if anything other than air or a snow layer sits above the target.
# This leaves blocks under fences, leaves, flowers, etc. untouched.
execute unless block ~ ~0 ~ #minecraft:air unless block ~ ~0 ~ minecraft:snow run return 0

# ============================================================
# BLOCK CONVERSION RULES
# Add new swap pairs here following the same pattern.
# Each rule uses "return run" so only ONE conversion fires per
# threshold event — preventing instant chain-skipping.
# Also add any new source blocks to tags/block/convertible.json
# and new toggles to dialog/main.json, load.mcfunction, apply.mcfunction.
# ============================================================

# --- GRASS PATH (toggle: #grass fp.settings) ---
# Step 1: Grass Block -> Dirt
execute if score #grass fp.settings matches 1 if block ~ ~-1 ~ minecraft:grass_block run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt replace minecraft:grass_block
# Step 2: Dirt -> Dirt Path
execute if score #grass fp.settings matches 1 if block ~ ~-1 ~ minecraft:dirt run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt_path replace minecraft:dirt

# --- STONE PATH (toggle: #stone fp.settings) ---
# Step 1: Stone -> Cobblestone
execute if score #stone fp.settings matches 1 if block ~ ~-1 ~ minecraft:stone run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:cobblestone replace minecraft:stone
# Step 2: Cobblestone -> Cobbled Deepslate
execute if score #stone fp.settings matches 1 if block ~ ~-1 ~ minecraft:cobblestone run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:cobbled_deepslate replace minecraft:cobblestone

# --- COARSE DIRT -> DIRT (toggle: #coarse_dirt fp.settings) ---
execute if score #coarse_dirt fp.settings matches 1 if block ~ ~-1 ~ minecraft:coarse_dirt run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt replace minecraft:coarse_dirt

# --- DEEPSLATE -> COBBLED DEEPSLATE (toggle: #deepslate fp.settings) ---
execute if score #deepslate fp.settings matches 1 if block ~ ~-1 ~ minecraft:deepslate run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:cobbled_deepslate replace minecraft:deepslate

# --- MYCELIUM -> DIRT (toggle: #mycelium fp.settings) ---
execute if score #mycelium fp.settings matches 1 if block ~ ~-1 ~ minecraft:mycelium run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt replace minecraft:mycelium

# --- NYLIUM -> NETHERRACK (toggle: #nylium fp.settings) ---
execute if score #nylium fp.settings matches 1 if block ~ ~-1 ~ minecraft:crimson_nylium run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:netherrack replace minecraft:crimson_nylium
execute if score #nylium fp.settings matches 1 if block ~ ~-1 ~ minecraft:warped_nylium run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:netherrack replace minecraft:warped_nylium

# --- PODZOL -> DIRT (toggle: #podzol fp.settings) ---
execute if score #podzol fp.settings matches 1 if block ~ ~-1 ~ minecraft:podzol run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:dirt replace minecraft:podzol

# --- SAND -> SANDSTONE (toggle: #sand fp.settings) ---
execute if score #sand fp.settings matches 1 if block ~ ~-1 ~ minecraft:sand run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:sandstone replace minecraft:sand

# --- RED SAND -> RED SANDSTONE (toggle: #red_sand fp.settings) ---
execute if score #red_sand fp.settings matches 1 if block ~ ~-1 ~ minecraft:red_sand run return run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:red_sandstone replace minecraft:red_sand

return 0
