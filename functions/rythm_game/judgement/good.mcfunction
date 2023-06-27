scoreboard players add mrg_combo mrg_music 1
title @p[tag=mrg_player] actionbar [{"text":"GOOD "},{"score":{"name":"mrg_combo","objective":"mrg_music"}}]

scoreboard players add mrg_good mrg_music 1
scoreboard players operation mrg_score mrg_music += mrg_score_good mrg_music