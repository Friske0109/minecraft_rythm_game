scoreboard players add mrg_combo mrg_music 1
title @p[tag=mrg_player] actionbar [{"text":"BAD"},{"score":{"name":"mrg_combo","objective":"mrg_music"}}]

scoreboard players add mrg_bad mrg_music 1
scoreboard players operation mrg_score mrg_music += mrg_score_bad mrg_music