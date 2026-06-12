# Called via macro from dialog submission — do not call directly
$data merge storage paths:settings {podzol_path:$(podzol_path),coarse_path:$(coarse_path),mycelium_path:$(mycelium_path),stone_path:$(stone_path),sand_path:$(sand_path),redsand_path:$(redsand_path),nylium_path:$(nylium_path),deep_path:$(deep_path),deepc_path:$(deepc_path),torch_path:$(torch_path),convert_time:$(convert_time)}
function paths:settings/process
