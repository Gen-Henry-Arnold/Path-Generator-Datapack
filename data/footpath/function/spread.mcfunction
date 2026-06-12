# Called when threshold is reached and path_size >= 3.
# Randomly converts additional blocks around the player using footpath:convert,
# which handles per-block-type logic and toggle checks automatically.
#
# Size 3: ~3 of 8 inner positions (probability 9/24 = 3/8 each)
# Size 5: ~8 of 24 total positions (probability 8/24 = 1/3 each for inner,
#          1/3 each for outer)
#
# Slope support: for each XZ position, tries Y+1 first (sloped up), then Y0
# (flat terrain), then Y-1 (sloped down). #hit tracks whether a conversion
# already fired so only the topmost accessible block is converted per position.
# The air/snow check inside footpath:convert handles the above-block gate at
# each Y level.

# --- 3x3 INNER RING (8 positions) ---
# One roll covers both size checks: 1..9 of 24 = 3/8, 1..8 of 24 = 1/3

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~-1 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~-1 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~0 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~0 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~0 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~0 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~0 ~-1 ~-1 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~0 ~-1 ~-1 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~-1 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~-1 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~0 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~0 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~1 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~1 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~0 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~0 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~0 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~0 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~1 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~1 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~0 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~0 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~0 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~0 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~0 ~-1 ~1 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~0 ~-1 ~1 run function footpath:convert

execute store result score #r fp.settings run random value 1..24
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 3 if score #r fp.settings matches 1..9 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~1 run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1..8 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~1 run function footpath:convert

# --- 5x5 OUTER RING (16 positions, size 5 only, 1/3 chance each) ---

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~1 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~0 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~-1 ~-2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~-2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~0 ~1 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~0 ~0 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~0 ~-1 ~-2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~1 ~1 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~1 ~0 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~-2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~1 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~0 ~-2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~-1 ~-2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~-1 ~-1 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~1 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~0 ~-1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~-1 ~-1 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~1 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~0 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~-1 ~0 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~1 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~0 ~0 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~-1 ~0 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~-1 ~1 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~1 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~0 ~1 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~-1 ~1 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~1 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~0 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-2 ~-1 ~2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-1 ~1 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-1 ~0 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~-1 ~-1 ~2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~0 ~1 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~0 ~0 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~0 ~-1 ~2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~1 ~1 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~1 ~0 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~1 ~-1 ~2 run function footpath:convert

execute store result score #r fp.settings run random value 1..3
scoreboard players set #hit fp.settings 0
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~1 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~0 ~2 store result score #hit fp.settings run function footpath:convert
execute if score #path_size fp.settings matches 5 if score #r fp.settings matches 1 if score #hit fp.settings matches 0 positioned ~2 ~-1 ~2 run function footpath:convert
