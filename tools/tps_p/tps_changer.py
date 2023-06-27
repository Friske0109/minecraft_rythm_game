#100b→150b
#だいぶ適当

import re
import math

path = "music.mcfunction"
line =6

with open(path,mode="r",encoding="utf-8_sig") as f:
    sheet = f.read()

s = sheet.split("\n")

with open("p_"+path,mode="w") as f:
    for i in range(line):
        print(s[i],file=f)

    for i in range(len(s)-6):
        num = re.findall(r"\d+",s[i+6])
        if num:
            if "scoreboard players set" in s[i+6]:
                p = math.ceil(float(num[0])*4/3)
                j = math.ceil(float(num[2])*4/3)
                if int(num[2]) > 47:
                    print(s[i+6].replace(str(num[0]),str(p)).replace(str(num[2]),str(j)),file=f)
                else:
                    print(s[i+6].replace(str(num[0]),str(p)),file=f)
            else: 
                p = math.ceil(float(num[0])*4/3)
                print(s[i+6].replace(str(num[0]),str(p)),file=f)
        else:
            print(s[i+6],file=f)