##
# Считает диагонали слева направо вниз и справа налево внизу
# потом находит разницу по модулю между двумя результатами
#
def diagonal_difference(arr)
  size = arr[0].length - 1

  left_to_right = 0
  rigth_to_left = 0

  for i in 0..size
    left_to_right += arr[i][i]
    rigth_to_left += arr[i][size - i]
  end
  _result = (left_to_right - rigth_to_left).abs
end


array = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

puts diagonal_difference(array)
