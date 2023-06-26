execute store success score touched_lane1 mrg_music run kill @e[tag=mrg_current_note1]
tag @e[tag=mrg_notes_lane1,sort=nearest,limit=1] add mrg_current_note1

execute if score touched_lane1 mrg_music matches 1 run tellraw @p "touched"