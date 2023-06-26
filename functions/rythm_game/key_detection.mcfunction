execute store result score players mrg_music run execute if entity @a[tag=mrg_player]
execute if score players mrg_music matches 2.. run tag @a[tag=mrg_player] remove mrg_player

#playerのuuid
execute unless entity @p[tag=mrg_player] run scoreboard players reset player_uuid0 mrg_music
execute unless entity @p[tag=mrg_player] run scoreboard players reset player_uuid1 mrg_music
execute unless entity @p[tag=mrg_player] run scoreboard players reset player_uuid2 mrg_music
execute unless entity @p[tag=mrg_player] run scoreboard players reset player_uuid3 mrg_music
execute store result score player_uuid0 mrg_music run data get entity @p[tag=mrg_player] UUID[0]
execute store result score player_uuid1 mrg_music run data get entity @p[tag=mrg_player] UUID[1]
execute store result score player_uuid2 mrg_music run data get entity @p[tag=mrg_player] UUID[2]
execute store result score player_uuid3 mrg_music run data get entity @p[tag=mrg_player] UUID[3]

item replace entity @p[tag=mrg_player] container.8 with minecraft:carrot_on_a_stick{Tags:["mrg_detector"]}
#F
execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["mrg_detector"]},Count:1b}]},tag=mrg_player] run function minecraft_rythm_game:rythm_game/key_detection/f_detected

#right_click
execute store result score r_click_uuid0 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] interaction.player[0]
execute store result score r_click_uuid1 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] interaction.player[1]
execute store result score r_click_uuid2 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] interaction.player[2]
execute store result score r_click_uuid3 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] interaction.player[3]

execute store result score r_click_detection mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] interaction.timestamp

execute if score r_click_uuid0 mrg_music = player_uuid0 mrg_music run execute if score r_click_uuid1 mrg_music = player_uuid1 mrg_music run execute if score r_click_uuid2 mrg_music = player_uuid2 mrg_music run execute if score r_click_uuid3 mrg_music = player_uuid3 mrg_music run execute if score r_click_detection mrg_music > r_click_detector mrg_music run function minecraft_rythm_game:rythm_game/key_detection/r_click_detected
execute store result score r_click_detector mrg_music run scoreboard players get r_click_detection mrg_music

#left_click
execute store result score l_click_uuid0 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] attack.player[0]
execute store result score l_click_uuid1 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] attack.player[1]
execute store result score l_click_uuid2 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] attack.player[2]
execute store result score l_click_uuid3 mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] attack.player[3]

execute store result score l_click_detection mrg_music run data get entity @e[type=minecraft:interaction,tag=mrg_detector,limit=1] attack.timestamp
execute if score l_click_uuid0 mrg_music = player_uuid0 mrg_music run execute if score l_click_uuid1 mrg_music = player_uuid1 mrg_music run execute if score l_click_uuid2 mrg_music = player_uuid2 mrg_music run execute if score l_click_uuid3 mrg_music = player_uuid3 mrg_music run execute if score l_click_detection mrg_music > l_click_detector mrg_music run function minecraft_rythm_game:rythm_game/key_detection/l_click_detected
execute store result score l_click_detector mrg_music run scoreboard players get l_click_detection mrg_music

#jump
execute if entity @p[tag=mrg_player,scores={mrg_jump=1..}] run function minecraft_rythm_game:rythm_game/key_detection/jump_detected