execute store success score touched_lane0 mrg_music run kill @e[tag=mrg_current_note0]
tag @e[tag=mrg_notes_lane0,sort=nearest,limit=1] add mrg_current_note0

execute if score touched_lane0 mrg_music matches 1 run tellraw @p "touched"