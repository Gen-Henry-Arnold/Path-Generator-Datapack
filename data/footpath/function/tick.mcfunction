# Increment ticks while standing on any convertible block
execute as @a at @s if block ~ ~-1 ~ #footpath:convertible run scoreboard players add @s fp.ticks 1

# Reset ticks when not on any convertible block
execute as @a at @s unless block ~ ~-1 ~ #footpath:convertible run scoreboard players set @s fp.ticks 0

# When threshold is reached: convert center block, then spread if path_size > 1
execute as @a at @s if score @s fp.ticks >= #threshold fp.settings run function footpath:convert
execute as @a at @s if score @s fp.ticks >= #threshold fp.settings if score #path_size fp.settings matches 3.. run function footpath:spread

# Reset counter after conversion
execute as @a at @s if score @s fp.ticks >= #threshold fp.settings run scoreboard players set @s fp.ticks 0
