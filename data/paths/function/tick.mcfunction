# tick.mcfunction
scoreboard players add @a path_timer 1
execute as @a at @s if score @s path_timer >= #settings convert_time positioned ~ ~-0.9 ~ run function paths:convert
