# Apply dialog results from paths:settings storage to scoreboards for all players
execute if data storage paths:settings {podzol_path:1b}   run scoreboard players set @a podzol_path 1
execute unless data storage paths:settings {podzol_path:1b}   run scoreboard players set @a podzol_path 0

execute if data storage paths:settings {coarse_path:1b}   run scoreboard players set @a coarse_path 1
execute unless data storage paths:settings {coarse_path:1b}   run scoreboard players set @a coarse_path 0

execute if data storage paths:settings {mycelium_path:1b} run scoreboard players set @a mycelium_path 1
execute unless data storage paths:settings {mycelium_path:1b} run scoreboard players set @a mycelium_path 0

execute if data storage paths:settings {stone_path:1b}    run scoreboard players set @a stone_path 1
execute unless data storage paths:settings {stone_path:1b}    run scoreboard players set @a stone_path 0

execute if data storage paths:settings {sand_path:1b}     run scoreboard players set @a sand_path 1
execute unless data storage paths:settings {sand_path:1b}     run scoreboard players set @a sand_path 0

execute if data storage paths:settings {redsand_path:1b}  run scoreboard players set @a redsand_path 1
execute unless data storage paths:settings {redsand_path:1b}  run scoreboard players set @a redsand_path 0

execute if data storage paths:settings {nylium_path:1b}   run scoreboard players set @a nylium_path 1
execute unless data storage paths:settings {nylium_path:1b}   run scoreboard players set @a nylium_path 0

execute if data storage paths:settings {deep_path:1b}     run scoreboard players set @a deep_path 1
execute unless data storage paths:settings {deep_path:1b}     run scoreboard players set @a deep_path 0

execute if data storage paths:settings {deepc_path:1b}    run scoreboard players set @a deepc_path 1
execute unless data storage paths:settings {deepc_path:1b}    run scoreboard players set @a deepc_path 0

execute if data storage paths:settings {torch_path:1b}    run scoreboard players set @a torch_path 1
execute unless data storage paths:settings {torch_path:1b}    run scoreboard players set @a torch_path 0

execute store result score #settings convert_time run data get storage paths:settings convert_time

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ .2 1.3 .2
