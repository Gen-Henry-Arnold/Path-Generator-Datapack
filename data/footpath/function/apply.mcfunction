# Macro function — called by the dialog Apply button.
# Booleans arrive as "1"/"0" (via on_true/on_false in the dialog).
# number_range arrives as a whole integer string, so direct scoreboard set is safe.
$scoreboard players set #grass fp.settings $(grass)
$scoreboard players set #stone fp.settings $(stone)
$scoreboard players set #coarse_dirt fp.settings $(coarse_dirt)
$scoreboard players set #deepslate fp.settings $(deepslate)
$scoreboard players set #mycelium fp.settings $(mycelium)
$scoreboard players set #nylium fp.settings $(nylium)
$scoreboard players set #podzol fp.settings $(podzol)
$scoreboard players set #sand fp.settings $(sand)
$scoreboard players set #red_sand fp.settings $(red_sand)
$scoreboard players set #path_size fp.settings $(path_size)
$scoreboard players set #threshold fp.settings $(seconds)
scoreboard players operation #threshold fp.settings *= #twenty fp.settings
