def print_unordered_pairs(array: list):
    i = 0

    while i < len(array):
        j = 0
        while j < len(array):
            print(f"{array[i]}, {array[j]}")
            j += 1
        i += 1


items = [0, 1, 2, 3, 4, 5, 6, 7]
print_unordered_pairs(items)
