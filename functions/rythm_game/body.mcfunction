summon block_display ~ ~ ~ {Tags:["mrg_bg"],block_state:{Name:"black_concrete"}}
data modify entity @e[tag=mrg_bg,limit=1] transformation.scale set value [0.8f,1.6f,0.02f]

#クリック判定
execute at @e[tag=mrg_bg,limit=1] run summon interaction ~0.4 ~ ~ {Tags:["mrg_detector"],width:0.8f,height:1.6f}

#判定線
execute at @e[tag=mrg_bg,limit=1] run summon block_display ~ ~0.2 ~0.01 {Tags:["mrg_line"],block_state:{Name:"light_gray_concrete"}}
data modify entity @e[tag=mrg_line,limit=1] transformation.scale set value [0.8f,0.02f,0.02f]

#レーン分け
execute at @e[tag=mrg_bg,limit=1] run summon block_display ~-0.01 ~ ~0.005 {Tags:["mrg_lanes","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.01f,1.6f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.8 ~ ~0.005 {Tags:["mrg_lanes","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.01f,1.6f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.195 ~ ~0.005 {Tags:["mrg_lanes","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.01f,1.6f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.395 ~ ~0.005 {Tags:["mrg_lanes","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.01f,1.6f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.595 ~ ~0.005 {Tags:["mrg_lanes","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.01f,1.6f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

#ボタンデザイン
execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.025 ~0.025 ~0.006 {Tags:["mrg_buttons","mrg_button0","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.15f,0.15f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.225 ~0.025 ~0.006 {Tags:["mrg_buttons","mrg_button1","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.15f,0.15f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.425 ~0.025 ~0.006 {Tags:["mrg_buttons","mrg_button2","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.15f,0.15f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

execute at @e[tag=mrg_bg,limit=1] run summon block_display ~0.625 ~0.025 ~0.006 {Tags:["mrg_buttons","mrg_button3","mrg_tmp"],block_state:{Name:"white_concrete"}}
data modify entity @e[tag=mrg_tmp,limit=1] transformation.scale set value [0.15f,0.15f,0.02f]
tag @e[tag=mrg_tmp] remove mrg_tmp

#テキスト
execute at @e[tag=mrg_button0] run summon minecraft:text_display ~0.075 ~0.05 ~0.021 {text:'{"keybind":"key.swapOffhand","color":"black","bold":true}',background:24,Tags:["mrg_button0_label","mrg_button_labels"]}
data modify entity @e[tag=mrg_button0_label,limit=1] transformation.scale set value [0.15f,0.15f,0f]

execute at @e[tag=mrg_button1] run summon minecraft:text_display ~0.075 ~0.05 ~0.021 {text:'{"keybind":"key.jump","color":"black","bold":true}',background:24,Tags:["mrg_button1_label","mrg_button_labels"]}
data modify entity @e[tag=mrg_button1_label,limit=1] transformation.scale set value [0.15f,0.15f,0f]

execute at @e[tag=mrg_button2] run summon minecraft:text_display ~0.075 ~0.05 ~0.021 {text:'{"keybind":"key.attack","color":"black","bold":true}',background:24,Tags:["mrg_button2_label","mrg_button_labels"]}
data modify entity @e[tag=mrg_button2_label,limit=1] transformation.scale set value [0.15f,0.15f,0f]

execute at @e[tag=mrg_button3] run summon minecraft:text_display ~0.075 ~0.05 ~0.021 {text:'{"keybind":"key.use","color":"black","bold":true}',background:24,Tags:["mrg_button3_label","mrg_button_labels"]}
data modify entity @e[tag=mrg_button3_label,limit=1] transformation.scale set value [0.15f,0.15f,0f]

#判定用エンティティ
execute at @e[tag=mrg_line] run summon minecraft:block_display ~ ~ ~ {Tags:["mrg_judge","mrg_judge0"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.205 ~ ~ {Tags:["mrg_judge","mrg_judge1"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.405 ~ ~ {Tags:["mrg_judge","mrg_judge2"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.605 ~ ~ {Tags:["mrg_judge","mrg_judge3"]}

#見過ごし用エンティティ
execute at @e[tag=mrg_line] run summon minecraft:block_display ~ ~-0.2 ~ {Tags:["mrg_judge","mrg_miss_judge0"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.205 ~-0.2 ~ {Tags:["mrg_judge","mrg_miss_judge1"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.405 ~-0.2 ~ {Tags:["mrg_judge","mrg_miss_judge2"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.605 ~-0.2 ~ {Tags:["mrg_judge","mrg_miss_judge3"]}