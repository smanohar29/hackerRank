from collections import defaultdict

c=0

if __name__ == '__main__':
    s = input()
    s = sorted(list(s))

    s_set = sorted(set(s))

    dic = defaultdict(int)

    for i in s:
        if i in s_set:
            dic[i] = dic[i] + 1

    sorted_list = sorted(dic.items(), key=lambda x: x[1], reverse=True)

    for i in range(0, len(sorted_list)):
        if i < 3:
            print(sorted_list[i][0], sorted_list[i][1])
        else:
            break



