# tick.mcfunction
scoreboard players add @a grass_timer 1
execute as @a[scores={grass_timer=75..}] at @s positioned ~ ~-0.9 ~ run function paths:convert