kill @e[tag=mrg_current_note1]
tag @e[tag=mrg_notes_lane1,sort=nearest,limit=1] add mrg_current_note1

title @p[tag=mrg_player] actionbar [{"text":"MISS"}]

scoreboard players add mrg_miss mrg_music 1