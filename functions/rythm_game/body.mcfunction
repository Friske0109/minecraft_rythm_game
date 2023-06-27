summon block_display ~ ~ ~ {Tags:["mrg_bg"],block_state:{Name:"black_concrete"}}
data modify entity @e[tag=mrg_bg,limit=1] transformation.scale set value [1.2f,1.6f,0.02f]

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
execute at @e[tag=mrg_line] run summon minecraft:block_display ~ ~-0.5 ~ {Tags:["mrg_judge","mrg_miss_judge0"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.205 ~-0.5 ~ {Tags:["mrg_judge","mrg_miss_judge1"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.405 ~-0.5 ~ {Tags:["mrg_judge","mrg_miss_judge2"]}
execute at @e[tag=mrg_line] run summon minecraft:block_display ~0.605 ~-0.5 ~ {Tags:["mrg_judge","mrg_miss_judge3"]}

#スコア関連
execute at @e[tag=mrg_bg] run summon minecraft:text_display ~1.0 ~0.5 ~0.021 {text:'{"text":"GREAT :","color":"yellow","bold":true}',background:24,Tags:["mrg_score_labels","mrg_great_label"]}
data modify entity @e[tag=mrg_great_label,limit=1] transformation.scale set value [0.2f,0.2f,0f]

execute at @e[tag=mrg_bg] run summon minecraft:text_display ~1.0 ~0.45 ~0.021 {text:'{"text":"GOOD  :","color":"blue","bold":true}',background:24,Tags:["mrg_score_labels","mrg_good_label"]}
data modify entity @e[tag=mrg_good_label,limit=1] transformation.scale set value [0.2f,0.2f,0f]

execute at @e[tag=mrg_bg] run summon minecraft:text_display ~1.0 ~0.4 ~0.021 {text:'{"text":"BAD   :","color":"red","bold":true}',background:24,Tags:["mrg_score_labels","mrg_bad_label"]}
data modify entity @e[tag=mrg_bad_label,limit=1] transformation.scale set value [0.2f,0.2f,0f]

execute at @e[tag=mrg_bg] run summon minecraft:text_display ~1.0 ~0.35 ~0.021 {text:'{"text":"MISS  :","color":"gray","bold":true}',background:24,Tags:["mrg_score_labels","mrg_miss_label"]}
data modify entity @e[tag=mrg_miss_label,limit=1] transformation.scale set value [0.2f,0.2f,0f]

execute at @e[tag=mrg_bg] run summon minecraft:text_display ~1.0 ~0.7 ~0.021 {text:'{"text":"score","color":"white","bold":true}',background:24,Tags:["mrg_score_labels","mrg_score_label"]}
data modify entity @e[tag=mrg_score_label,limit=1] transformation.scale set value [0.2f,0.2f,0f]

execute at @e[tag=mrg_bg] run summon minecraft:text_display ~1.0 ~0.6 ~0.021 {text:'{"text":"score","color":"white","bold":true}',background:24,Tags:["mrg_score_labels","mrg_scoredis_label"]}
data modify entity @e[tag=mrg_scoredis_label,limit=1] transformation.scale set value [0.2f,0.2f,0f]

execute at @e[tag=mrg_bg] run summon minecraft:text_display ~0.4 ~0.6 ~0.021 {text:'{"text":"","color":"white"}',background:24,Tags:["mrg_score_labels","mrg_combo_label"]}
data modify entity @e[tag=mrg_combo_label,limit=1] transformation.scale set value [0.4f,0.8f,0f]