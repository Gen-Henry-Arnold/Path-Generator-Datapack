# toggle setting
	execute if score @s nylium_path matches 1.. run scoreboard players set @a nylium_path 2
	execute unless score @s nylium_path matches 1.. run scoreboard players set @a nylium_path 1
	execute if score @s nylium_path matches 2.. run scoreboard players set @a nylium_path 0

# play sound
	execute if score @s nylium_path matches 1 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.3 .2
	execute if score @s nylium_path matches 0 run playsound minecraft:ui.button.click master @s ~ ~ ~ .2 1.9 .2

# open settings
	function paths:settings/settings1