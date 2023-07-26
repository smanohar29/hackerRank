# most recurring element in a list
from collections import defaultdict

elements = [1, 5, 6, 2, 1, 4, 2, 1, 9]
dic = defaultdict(int)

for i in elements:
    dic[i] = dic[i]+ 1
print(dic)

s = sorted(dic.items(), key=lambda x:x[1], reverse=True)
print(s[0][0])

# print the first non recurring element in a list



