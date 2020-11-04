# play sound
	playsound minecraft:ui.button.click master @a ~ ~ ~ .2 1.6 .2

# settings menu
	tellraw @a ["",{"text":" "}]

	tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

	tellraw @a ["",{"text":"                   Path Generator Datapack Settings             ","color":"gold"},{"text":"  ","clickEvent":{"action":"run_command","value":"/function paths:settings/settings1"}},{"text":""},{"text":"  ","clickEvent":{"action":"run_command","value":"/function paths:settings/settings2"}}]

	tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

	execute if score @s podzol_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/podzol_path"}},{"text":" Nylium to Netherrack"}]
	execute unless score @s podzol_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/podzol_path"}},{"text":" Podzol to Dirt"}]

	execute if score @s mycelium_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/mycelium_path"}},{"text":" Mycelium to Grass Path"}]
	execute unless score @s mycelium_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/mycelium_path"}},{"text":" Mycelium to Dirt"}]

	execute if score @s nylium_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/nylium_path"}},{"text":" Nylium to Netherrack"}]
	execute unless score @s nylium_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/nylium_path"}},{"text":" Nylium to Netherrack"}]

	execute if score @s coarse_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/coarse_path"}},{"text":" Nylium to Netherrack"}]
	execute unless score @s coarse_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/coarse_path"}},{"text":" Coarse Dirt to Dirt"}]

	execute if score @s sand_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/sand_path"}},{"text":" Sand to Sandstone Path"}]
	execute unless score @s sand_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/sand_path"}},{"text":" Sand to Sandstone Path"}]

	execute if score @s redsand_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/redsand_path"}},{"text":" Red Sand to Red Sandstone Path"}]
	execute unless score @s redsand_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/redsand_path"}},{"text":" Red Sand to Red Sandstone Path"}]

	execute if score @s stone_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/stone_path"}},{"text":" Stone to Cobblestone Path"}]
	execute unless score @s stone_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/stone_path"}},{"text":" Stone to Cobblestone Path"}]

	execute if score @s torch_path matches 1.. run tellraw @a ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/torch_path"}},{"text":" Auto Place Torches"}]
	execute unless score @s torch_path matches 1.. run tellraw @a ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function paths:settings/toggle/torch_path"}},{"text":" Auto Place Torches"}]

# toggle command output
	schedule function paths:settings/reset_gamerule 1t
	gamerule sendCommandFeedback false
