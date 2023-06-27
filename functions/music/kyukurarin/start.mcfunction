function minecraft_rythm_game:stop
scoreboard players set mrg_playing mrg_music 1
scoreboard players set mrg_kyukurarin_offset mrg_music -27
scoreboard players operation mrg_kyukurarin_notes mrg_music = mrg_kyukurarin_offset mrg_music
function minecraft_rythm_game:music/kyukurarin/music