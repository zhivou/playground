# Incoming string = "asdsssdasssdas"
# Find duplicates.
INCOMING_STRING = "aszdssfsdasssrdas"


def find(string):
    count = {}
    result = {}

    for each_char in string:
        count.setdefault(each_char, 0)
        count[each_char] += 1

    for char in count:
        if count[char] > 1:
            result[char] = count[char]

    return result


print(find(INCOMING_STRING))
