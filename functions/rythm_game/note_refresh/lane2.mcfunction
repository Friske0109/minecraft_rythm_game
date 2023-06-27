kill @e[tag=mrg_current_note2]
tag @e[tag=mrg_notes_lane2,sort=nearest,limit=1] add mrg_current_note2

title @p[tag=mrg_player] actionbar [{"text":"MISS"}]

scoreboard players add mrg_miss mrg_music 1