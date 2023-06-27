#Convert json format music notation created by setchi's NoteEditer to mcfunction

import json
path = "NoteEditor/Notes/"
dir_path = "NoteEditor/sheets/"

track_name = "kyukurarin"

with open(path+track_name +'.json',mode="r",encoding="utf-8_sig") as f:
    sheet = json.load(f)

with open(dir_path + track_name + ".mcfunction",mode="w") as o:
    for note in sheet["notes"]:
        print("execute if score mrg_{}_notes mrg_music matches {} run function minecraft_rythm_game:rythm_game/note_summon/lane{}".format(track_name,note["num"],note["block"]),file=o)