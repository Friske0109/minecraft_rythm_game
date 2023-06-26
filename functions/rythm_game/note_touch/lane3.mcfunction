execute store success score touched_lane3 mrg_music run kill @e[tag=mrg_current_note3]
tag @e[tag=mrg_notes_lane3,sort=nearest,limit=1] add mrg_current_note3

execute if score touched_lane3 mrg_music matches 1 run tellraw @p "touched"