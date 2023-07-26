from string import capwords

line = "hello  world lol"
line_list = line.split()

newList = []

for i in line_list:
    newWord = i[0].upper() + i[1:]
    newList.append(newWord)

print(newList)
print(' '.join(newList))