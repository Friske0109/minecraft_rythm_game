execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.605 ~2.4 ~ {Tags:["mrg_notes","mrg_notes_lane3","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.2f,0.05f,0.011f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_judge3] run execute unless entity @e[tag=mrg_current_note3] run tag @e[tag=mrg_notes_lane3,sort=nearest] add mrg_current_note3