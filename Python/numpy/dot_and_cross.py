import numpy

i = 0
j = 0

n = int(input())

a = numpy.zeros((n, n), int)
b = numpy.zeros((n, n), int)
c = numpy.zeros((n, n), int)

for i in range(n):
    a[i] = numpy.array(input().split(), int)

for i in range(n):
    b[i] = numpy.array(input().split(), int)

for i in range(n):
    for j in range(n):
        for k in range(n):
            c[i][j] += (a[i][k] * b[k][j])

print(c)