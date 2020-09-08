# installation message
	tellraw @a [{"text":"Path Generator Datapack V1.1 installed!","color":"green"}]

# Help message
	tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

	tellraw @a ["",{"text":"                        Path Generator Datapack"}]

	tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

	tellraw @a ["",{"text":"The Path Generator Datapack creates trails over frequently travelled paths."}]

	tellraw @a ["",{"text":"This carefully crafted function will immerse you in a survival experience."}]

	tellraw @a ["","                 ",{"text":"[click here to check for new updates]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/path-generator-datapack/"}}]

	tellraw @a ["","                    ",{"text":"[click here to see the settings]","color":"aqua","clickEvent":{"action":"run_command","value":"/function paths:settings/settings1"}}]

	tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

# longer maxCommandChainLength
	gamerule maxCommandChainLength 1000000000

# load.mcfunction
	scoreboard objectives add grass_timer dummy

# optional settings
	scoreboard objectives add sand_path dummy
	scoreboard players set @a sand_path 0

	scoreboard objectives add redsand_path dummy
	scoreboard players set @a redsand_path 0

	scoreboard objectives add stone_path dummy
	scoreboard players set @a stone_path 0

	scoreboard objectives add mycelium_path dummy
	scoreboard players set @a mycelium_path 0

# play sound
	playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 0.03 1 0.03
