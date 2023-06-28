execute unless score @e[tag=mrg_button0,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button0,limit=1] block_state.Name set value "white_concrete"
execute if score @e[tag=mrg_button0,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button0,limit=1] block_state.Name set value "yellow_concrete"
execute unless score @e[tag=mrg_button1,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button1,limit=1] block_state.Name set value "white_concrete"
execute if score @e[tag=mrg_button1,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button1,limit=1] block_state.Name set value "yellow_concrete"
execute unless score @e[tag=mrg_button2,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button2,limit=1] block_state.Name set value "white_concrete"
execute if score @e[tag=mrg_button2,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button2,limit=1] block_state.Name set value "yellow_concrete"
execute unless score @e[tag=mrg_button3,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button3,limit=1] block_state.Name set value "white_concrete"
execute if score @e[tag=mrg_button3,limit=1] mrg_music matches 1.. run data modify entity @e[tag=mrg_button3,limit=1] block_state.Name set value "yellow_concrete"

execute if score @e[tag=mrg_button0,limit=1] mrg_music matches 1.. run scoreboard players remove @e[tag=mrg_button0,limit=1] mrg_music 1
execute if score @e[tag=mrg_button1,limit=1] mrg_music matches 1.. run scoreboard players remove @e[tag=mrg_button1,limit=1] mrg_music 1
execute if score @e[tag=mrg_button2,limit=1] mrg_music matches 1.. run scoreboard players remove @e[tag=mrg_button2,limit=1] mrg_music 1
execute if score @e[tag=mrg_button3,limit=1] mrg_music matches 1.. run scoreboard players remove @e[tag=mrg_button3,limit=1] mrg_music 1

#テキスト更新
data modify entity @e[tag=mrg_button0_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_button0_label,limit=1] text set value '{"keybind":"key.swapOffhand","color":"black","bold":true}'

data modify entity @e[tag=mrg_button1_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_button1_label,limit=1] text set value '{"keybind":"key.jump","color":"black","bold":true}'

data modify entity @e[tag=mrg_button2_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_button2_label,limit=1] text set value '{"keybind":"key.attack","color":"black","bold":true}'

data modify entity @e[tag=mrg_button3_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_button3_label,limit=1] text set value '{"keybind":"key.use","color":"black","bold":true}'

#スコア表記
data modify entity @e[tag=mrg_great_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_great_label,limit=1] text set value '["",{"text":"GREAT : ","color":"yellow","bold":"true"},{"score":{"name":"mrg_great","objective":"mrg_music"},"color":"yellow","bold":"true"}]'

data modify entity @e[tag=mrg_good_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_good_label,limit=1] text set value '["",{"text":"GOOD  : ","color":"blue","bold":"true"},{"score":{"name":"mrg_good","objective":"mrg_music"},"color":"blue","bold":"true"}]'

data modify entity @e[tag=mrg_bad_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_bad_label,limit=1] text set value '["",{"text":"BAD   : ","color":"red","bold":"true"},{"score":{"name":"mrg_bad","objective":"mrg_music"},"color":"red","bold":"true"}]'

data modify entity @e[tag=mrg_miss_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_miss_label,limit=1] text set value '["",{"text":"MISS  : ","color":"gray","bold":"true"},{"score":{"name":"mrg_miss","objective":"mrg_music"},"color":"gray","bold":"true"}]'

data modify entity @e[tag=mrg_scoredis_label,limit=1] text set value '{"text":""}'
data modify entity @e[tag=mrg_scoredis_label,limit=1] text set value '["",{"score":{"name":"mrg_score","objective":"mrg_music"},"color":"white","bold":"true"}]'

data modify entity @e[tag=mrg_combo_label,limit=1] text set value '{"text":""}'
execute if score mrg_judge mrg_music matches 1 run data modify entity @e[tag=mrg_combo_label,limit=1] text set value '["",{"text":"GREAT","color":"yellow","bold":"true"},{"score":{"name":"mrg_combo","objective":"mrg_music"},"color":"white","bold":"true"}]'
execute if score mrg_judge mrg_music matches 2 run data modify entity @e[tag=mrg_combo_label,limit=1] text set value '["",{"text":"GOOD","color":"blue","bold":"true"},{"score":{"name":"mrg_combo","objective":"mrg_music"},"color":"white","bold":"true"}]'
execute if score mrg_judge mrg_music matches 3 run data modify entity @e[tag=mrg_combo_label,limit=1] text set value '["",{"text":"BAD","color":"red","bold":"true"},{"score":{"name":"mrg_combo","objective":"mrg_music"},"color":"white","bold":"true"}]'
execute if score mrg_judge mrg_music matches 4 run data modify entity @e[tag=mrg_combo_label,limit=1] text set value '["",{"text":"MISS","color":"gray","bold":"true"}]'