def uniq_string(string: str):
    # ASCII Code is a set of characters form 0-127
    # if str > 128 it should exit as it's not uniq anymore.
    # This one is O(n) for not fixed str but we might get
    # tons of dups in the line so it will make it O(n).
    ascii_max = 128
    if len(string) > ascii_max:
        return False

    if len(string) == 1:
        return True

    ascii_map = [False for i in range(ascii_max)]
    for i in string:
        value = ord(i)
        if ascii_map[value]:
            return False
        else:
            ascii_map[value] = True
    return True


# This is simple pair solution. We can
# call it brute force approach. Can be use with arrays to find matching pairs.
# This will have O(N^2) time complexity.
def uniq_pairs(string: str):
    ascii_max = 128
    if len(string) > ascii_max:
        return False

    if len(string) == 1:
        return True

    for i in range(0, len(string)):
        for j in range(i + 1, len(string)):
            if string[i] == string[j]:
                return False
    return True


#print(uniq_string("1233"))
print(uniq_pairs("12"))
