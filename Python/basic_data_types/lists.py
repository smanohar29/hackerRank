if __name__ == '__main__':
    n = int(input())
    result = list()

    for i in range(0, n):
        inp = input().split()

        action = inp[0]
        numbers = inp[1:]

        if action == 'append':
            [result.append(int(i)) for i in numbers]

        if action == 'remove':
            [result.remove(int(i)) for i in numbers]

        if action == 'insert':
            result.insert(int(numbers[0]), int(numbers[1]))

        if action == 'print':
            print(result)

        if action == 'pop':
            result.remove(result[-1])

        if action == 'sort':
            result = sorted(result)

        if action == 'reverse':
            result = result[::-1]