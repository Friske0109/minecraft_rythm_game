item replace entity @p[tag=mrg_player] weapon.offhand with air

scoreboard players set @e[tag=mrg_button0] mrg_music 2

#ノーツ更新
execute at @e[tag=mrg_judge0] run execute if entity @e[tag=mrg_notes_lane0,distance=0.4..0.6] run function minecraft_rythm_game:rythm_game/judgement/miss
execute at @e[tag=mrg_judge0] run execute if entity @e[tag=mrg_notes_lane0,distance=0.2..0.4] run function minecraft_rythm_game:rythm_game/judgement/bad
execute at @e[tag=mrg_judge0] run execute if entity @e[tag=mrg_notes_lane0,distance=0.1..0.2] run function minecraft_rythm_game:rythm_game/judgement/good
execute at @e[tag=mrg_judge0] run execute if entity @e[tag=mrg_notes_lane0,distance=..0.1] run function minecraft_rythm_game:rythm_game/judgement/great

kill @e[tag=mrg_current_note0]
tag @e[tag=mrg_notes_lane0,sort=nearest,limit=1] add mrg_current_note0