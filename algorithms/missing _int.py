def missing_number(array, n):
    actual = 0
    expected = 0

    for i in array:
        actual += i

    for j in range(1, n + 1):
        expected += j

    return (expected - actual)


print(missing_number([1, 2, 3, 5], 5))
