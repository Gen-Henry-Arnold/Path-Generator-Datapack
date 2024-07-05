# tick.mcfunction
scoreboard players add @a path_timer 1
execute as @a[scores={path_timer=75..}] at @s positioned ~ ~-0.9 ~ run function paths:convert