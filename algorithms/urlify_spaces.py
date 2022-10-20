# Input: "Mr John Smith    ", 13
# Output: "Mr%20John%20Smith"
#
# Find how many spaces there are it will help to calculate
# extra spaces that are needed. If true given use it as a max limit,
# if not add it to the end of the array/string

def replace_spaces(s: list, true_length):
    number_of_spaces = 2 #str(s).find(' ', 0, true_length)

    # number_of_spaces * 2 is here to make string bigger to fit
    # %20, space will be replaced with % so only 2 char is required.
    new_length = true_length - 1 + number_of_spaces * 2

    if new_length + 1 < len(s):
        s[new_length + 1] = '\0'

    old_length = true_length - 1
    while old_length >= 0:
        if s[old_length] == ' ':
            s[new_length] = '0'
            s[new_length - 1] = '2'
            s[new_length - 2] = '%'
            new_length -= 3
        else:
            s[new_length] = s[old_length]
            new_length -= 1
        old_length -= 1

    return s


def replace_spaces_2(s: list[str], true_length: int):
    # Find how many spaces in the string/array
    white_spaces = find(s, " ", 0, true_length - 1)
    new_length = true_length - 1 + white_spaces * 2

    old_length = true_length - 1
    while old_length >= 0:
        if s[old_length] == ' ':
            s[new_length] = '0'
            s[new_length - 1] = '2'
            s[new_length - 2] = '%'
            new_length -= 3
        else:
            s[new_length] = s[old_length]
            new_length -= 1
        old_length -= 1

    return s


def find(s: list[str], target: str, start: int, finish: int) -> int:
    counter = 0

    for char in range(start, finish):
        if s[char] == target:
            counter += 1

    return counter


def replace_spaces_simple(s: list[str], true_length: int):
    space_count = find(s, " ", 0, true_length - 1)
    new_length = true_length + space_count * 2

    for key, value in enumerate(s):
        if value == " ":
            s.insert(key, "0")
            s.insert(key, "2"),
            s.insert(key, "%")
            s.pop(key + 3)

    return s[0: new_length]


print(replace_spaces_simple(["M", "r", " ", "J", "o", "h", "n", " ", "S", "m", "i", "t", "h", " ", " ", " ", " "], 13))
