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