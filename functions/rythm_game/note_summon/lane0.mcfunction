execute at @e[tag=mrg_line] run summon minecraft:block_display ~ ~2.4 ~ {Tags:["mrg_notes","mrg_notes_lane0","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.2f,0.05f,0.011f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_judge0] run execute unless entity @e[tag=mrg_current_note0] run tag @e[tag=mrg_notes_lane0,sort=nearest,limit=1] add mrg_current_note0
