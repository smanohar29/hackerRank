n = int(input())

record = list()
record = [[input(), float(input())] for _ in range(0, n)]

dic = {}
for i in record:
    dic[i[0]] = i[1]

scores = dic.values()

sec_sc = sorted(set(scores))[1]

names = list()

for key, val in dic.items():
    if val == sec_sc:
        names.append(key)

for i in sorted(names):
    print(i)