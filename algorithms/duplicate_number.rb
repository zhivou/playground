#
# How to find duplicate number on Integer array in Java? (solution)
# An array contains n numbers ranging from 0 to n-2. There is exactly one number is repeated in the array.
# You need to write a program to find that duplicate number. For example, if an array with length
# 6 contains numbers {0, 3, 1, 2, 3}, then duplicated number is 3. Actually, this problem is very similar
# to previous one and you can apply the same trick of comparing actual sum of an array to expected sum of
# series to find out that duplicate. This is generally asked as follow-up question of previous problem.
#
# Read more: https://javarevisited.blogspot.com/2015/06/top-20-array-interview-questions-and-answers.html#ixzz5c8TlkVHC
#

array = [0,1,1,2,3]
actual_sum = 0
expected_length = 5
expected_sum = 0

for i in 0..expected_length - 1 do
  expected_sum = expected_sum + i
end

array.each do |number|
  actual_sum = actual_sum + number
end

puts(expected_sum - actual_sum)


