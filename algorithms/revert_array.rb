def revert_array(array)
  reverted = []
  for i in 0..(array.length - 1)
    reverted << array[(array.length - 1) - i]
  end
  reverted
end

a = [1, 2, 3, 4, 5]
puts revert_array(a)