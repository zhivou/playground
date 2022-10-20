# Input: 2 String
# Write a method to decide if one is a premeditation of the other.

def sort_s(s: str) -> list[str]:
    chars = list(s)
    chars.sort()
    return chars


def is_permutation(a: str, b: str) -> bool:
    if len(a) != len(b):
        return False

    if sort_s(a) == sort_s(b):
        return True
    return False


def is_permutation_map(a: str, b: str) -> bool:
    if len(a) != len(b):
        return False

    hash_map = [0 for _ in range(128)]

    for i in list(a):
        value = ord(i)
        hash_map[value] += 1

    for j in list(b):
        value = ord(j)
        hash_map[value] -= 1
        if hash_map[value] < 0:
            return False

    return True


print(is_permutation_map("acf", "caf"))
