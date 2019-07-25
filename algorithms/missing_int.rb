#
# How to find the missing number in integer array of 1 to 100? (solution)
# This is one of the most simple array problems you will see, mostly asked in a telephonic round of Interview.
# You have given an integer array which contains numbers from 1 to 100 but one number is missing,
# you need to write a Java program to find that missing number in an array. You cannot use any open source
# library or Java API method which solves this problem. One trick to solve this problem is to calculate
# sum of all numbers in the array and compare with expected sum, the difference would be the missing number.
#

array = [2,3,4,5,6,7,8,9,10]
expected_sum = 0
sum = 0
expected_length = array.length + 1

for i in 1..expected_length
  expected_sum += i
end
array.each { |element| sum += element }
result = expected_sum - sum
puts result