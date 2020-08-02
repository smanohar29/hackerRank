import math

x = 12

def get_my_number(num):
    sum = 0
    for i in range(1, num+1):
        digits = int(math.log10(i))+1
        sum = sum * (10 ** digits) + i
    return sum

print(get_my_number(x))