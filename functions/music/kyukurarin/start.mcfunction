#初期化
function minecraft_rythm_game:stop
#プレイ中のフラグ
scoreboard players set mrg_playing mrg_music 1

#オフセットの設定
scoreboard players set mrg_kyukurarin_offset mrg_music 21
#オフセットの適用
scoreboard players operation mrg_kyukurarin_notes mrg_music = mrg_kyukurarin_offset mrg_music

function minecraft_rythm_game:music/kyukurarin/notes

#スコア初期化
scoreboard players set mrg_score mrg_music 0

#１ノーと当たりのスコアと、スコア補完を初期化
scoreboard players set mrg_score_note mrg_music 1000000
scoreboard players set mrg_score_comp mrg_music 1000000

#補完計算用スコアを用意
scoreboard players set 2 mrg_music 2
scoreboard players set 3 mrg_music 3
scoreboard players set 6 mrg_music 6
scoreboard players operation mrg_score_ope mrg_music = mrg_notes mrg_music
scoreboard players operation mrg_score_ope mrg_music *= 6 mrg_music

#計算
scoreboard players operation mrg_score_note mrg_music /= mrg_score_ope mrg_music
scoreboard players operation mrg_score_comp mrg_music %= mrg_score_ope mrg_music

#1ノート当たりのスコアを計算
scoreboard players operation mrg_score_good mrg_music = mrg_score_note mrg_music
scoreboard players operation mrg_score_bad mrg_music = mrg_score_note mrg_music
scoreboard players operation mrg_score_note mrg_music *= 6 mrg_music
scoreboard players operation mrg_score_good mrg_music *= 3 mrg_music
scoreboard players operation mrg_score_bad mrg_music *= 2 mrg_music

#note:１ノート当たりのスコア
#good:good出たときのスコア(note/2)
#bad :bad出たときのスコア(note/3)
#comp:全ノートが終わった後、スコアが0じゃないなら、加算(補完)

#曲と譜面の開始
function minecraft_rythm_game:music/kyukurarin/music