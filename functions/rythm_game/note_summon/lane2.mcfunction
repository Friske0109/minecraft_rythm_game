execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.405 ~2 ~ {Tags:["mrg_notes","mrg_notes_lane2","mrg_tmp"],block_state:{Name:"light_blue_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.2f,0.05f,0.011f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_judge2] run execute unless entity @e[tag=mrg_current_note2] run tag @e[tag=mrg_notes_lane2,sort=nearest] add mrg_current_note2