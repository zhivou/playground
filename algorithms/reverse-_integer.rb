# https://leetcode.com/problems/reverse-integer/
# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
#
# Input: 123
# Output: 321
# Example 2:
#
# Input: -123
# Output: -321
# Example 3:
#
# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1].
# For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

def reverse(x)
  max = 2**31-1 # Positive 32 Integer. Remember no () for 31-1
  min = -2**31 # Negative 32 Integer
  y = 0 # This is a new integer container
  negative = true if x < 0 # Need this to flip negative later
  x = -x if x < 0 # Also need this cause negative x will break the calculation

  while x > 0
    y = y * 10 # we will need free 0 added to latest y number in order to add offset from x
    y = y + (x%10) # when we have free 0 we can add latest offset from %10 to y
    x = x/10 # Removing last digit from int
  end

  y = -y if negative # Putting back negative

  if y > max || y < min # If overflows to any direction returns 0
    puts 0
  else
    puts y # If not returns reversed integer
  end
end

reverse(-123)