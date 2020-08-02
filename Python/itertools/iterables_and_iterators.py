from itertools import combinations

n = input()
elements = str(input()).replace(' ','')
k = int(input())

count=0

comb = list(combinations(elements, k))
# print(comb)

for i in comb:
    if 'a' in i:
        count += 1

print(round(float(count/len(comb)), 12))