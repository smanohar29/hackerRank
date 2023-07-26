number = 18

w = len(bin(number)[2:])

for i in range(1, number + 1):
    octal = oct(i)
    hexa = hex(i)
    binary = bin(i)

    print(str(i).rjust(w, ' '), octal[2:].rjust(w, ' '), (hexa[2:]).upper().rjust(w, ' '), binary[2:].rjust(w, ' '), sep=' ')


