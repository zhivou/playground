#https://leetcode.com/problems/two-sum/
#
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Example:
#
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

##
#
# HOW TO:
#
# Steps to solve. Using math first and coding later!
# 1. Get the difference between first element of nums and target sum:
#   difference  = target - number
# 2. Verify if there is any numbers which eq to difference:
#   nums.include?(difference)
# 3. Make sure that the number which is found is not the same as current iteration element:
#   index != nums.index(difference)
# 4. Don't forget sort the result
# 5. Return result
#
def two_sum(nums, target)
  nums.each_with_index do |number, index|
    difference  = target - number
    if nums.include?(difference) && index != nums.index(difference)
      index2 = nums.index(difference)
      return [index, index2].sort
    end
  end
end

two_sum([2,7,11,15], 9) # 0,1
two_sum([25,3,0,1], 26) # 0,3